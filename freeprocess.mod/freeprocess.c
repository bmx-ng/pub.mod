// freeprocess.c

#include <brl.mod/blitz.mod/blitz.h>

#include <stdio.h>

#define HIDECONSOLE 1
#define SHOWCONSOLE 2

#if __APPLE__ || __linux || __HAIKU__

#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/wait.h>
#include <signal.h>

int fdClose(size_t fd) {return close(fd);}
BBLONG fdRead(size_t fd,char *buffer,BBLONG count) {return read(fd,buffer,count);}
BBLONG fdWrite(size_t fd,char *buffer,BBLONG count) {return write(fd,buffer,count);}
int fdAvail(size_t fd) {int avail;if (ioctl(fd,FIONREAD,&avail)) avail=avail;return avail;}
int fdFlush(size_t fd) { return 0;}//flush(fd);}

///return 1 for running, 0 for finished
//
int fdProcessStatus( size_t pid ){

	int status=0;
	return !waitpid( pid,&status,WNOHANG );
}

//returns 0 for success, -1 for error
//
int fdTerminateProcess(size_t pid){

	if( !killpg( pid,SIGTERM ) ){
		int status=0;
		waitpid( pid,&status,0 );
		return 0;
	}
	return -1;
}


//returns 0 for success, -1 for error
//
int fdKillProcess(size_t pid){

	if( !killpg( pid,SIGKILL ) ){
		int status=0;
		waitpid( pid,&status,0 );
		return 0;
	}
	return -1;
}


static char **makeargv( const char *cmd ){
	int n,c;
	char *p;
	static char *args,**argv;

	if( args ) free( args );
	if( argv ) free( argv );
	args=(char*)malloc( strlen(cmd)+1 );
	strcpy( args,cmd );

	n=0;
	p=args;
	while( c=*p++ ){
		if( c==' ' ){
			continue;
		}else if( c=='\"' ){
			while( *p && *p!='\"' ) ++p;
		}else{
			while( *p && *p!=' ' ) ++p;
		}
		if( *p ) ++p;
		++n;
	}
	argv=(char**)malloc( (n+1)*sizeof(char*) );
	n=0;
	p=args;
	while( c=*p++ ){
		if( c==' ' ){
			continue;
		}else if( c=='\"' ){
			argv[n]=p;
			while( *p && *p!='\"' ) ++p;
		}else{
			argv[n]=p-1;
			while( *p && *p!=' ' ) ++p;
		}
		if( *p ) *p++=0;
		++n;
	}
	argv[n]=0;
	return argv;
}

#define PIPEREAD 0
#define PIPEWRITE 1

static int in[2],out[2],errfd[2];

size_t fdProcess( BBString *bbcmd,size_t *procin,size_t *procout,size_t *procerr,int flags)
{
	char 	*const*argv;
	int   	procid;

	//Set-up interprocess communication
	if (pipe(in)) return 0;
  	if (pipe(out)) return 0;
  	if (pipe(errfd)) return 0;

	//Fork process (returned value used to distinguish between child and parent process)
	procid=vfork();	//vfork() avoids memory overhead of fork()

	//Child process
	if (procid==0)
	{
		#if __linux
			setsid(); //Linux doesn't mind setsid()
		#else
			setpgid(0,0);	//but OS X doesn't like it, therefore resort to using setpgid().
		#endif

		dup2(out[PIPEREAD],STDIN_FILENO);
		close(out[PIPEWRITE]);

		dup2(in[PIPEWRITE],STDOUT_FILENO);
		close(in[PIPEREAD]);

		dup2(errfd[PIPEWRITE],STDERR_FILENO);
		close(errfd[PIPEREAD]);

		const char *cmd=bbStringToUTF8String(bbcmd);

		argv=makeargv(cmd);
		
		bbMemFree(cmd);
		
		execvp(argv[0],argv);

		_exit( -1 );

		return 0;	//Supposedly, we need this for some compilers.
	}

	//Parent process

	if(procid==-1) return 0;	//Return if child process couldn't be started.

	close(out[PIPEREAD]);		//Close the end of the pipes in that the child
	close(in[PIPEWRITE]);		//process is using.
	close(errfd[PIPEWRITE]);

	*procin=in[PIPEREAD];		//And return the end of the pipes that we should
	*procout=out[PIPEWRITE];	//be using.
	*procerr=errfd[PIPEREAD];

	return procid;
}

#endif

#ifdef _WIN32

extern int _bbusew;

//#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <tlhelp32.h>


// In the Windows world "TerminateProcess" kills a process without
// gracefully asking to stop I/O and other operations first.
// So there is a name clash between Linux' SIGKILL and Windows' TERMINATE
int KillProcessGroup(HANDLE prochandle,int procid)
{
	HANDLE snapshot,child;
	PROCESSENTRY32 procinfo;
	int gotinfo,res;

	snapshot=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
	if (snapshot!=INVALID_HANDLE_VALUE)
	{
		procinfo.dwSize=sizeof(procinfo);
		gotinfo=Process32First(snapshot,&procinfo);
		while (gotinfo)
		{
			if (procinfo.th32ParentProcessID==procid)
			{
//				printf("process=%x parent=%x module=%x path=%s\n",procinfo.th32ProcessID,procinfo.th32ParentProcessID,procinfo.th32ModuleID,procinfo.szExeFile);
				child=OpenProcess(PROCESS_ALL_ACCESS,0,procinfo.th32ProcessID);
				if (child)
				{
					res=TerminateProcess(child,-1);
					CloseHandle(child);
				}
			}
			gotinfo=Process32Next(snapshot,&procinfo);
		}
		CloseHandle(snapshot);
	}
	res=TerminateProcess(prochandle,-1);
	return res;
}

int TerminateProcessGroup(HANDLE prochandle,int procid)
{
	//for now we just do a kill instead of politely asking all
	//sub-windows (gui only) to gracefully end.
	return KillProcessGroup(prochandle, procid);
}

int fdClose(size_t fd)
{
	return CloseHandle((HANDLE)fd);
}

BBLONG fdRead(size_t fd,char *buffer,BBLONG bytes)
{
	int		res;
	DWORD count;
	res=ReadFile((HANDLE)fd,buffer,bytes,&count,0);
	if (res) return count;
	return 0;
}

BBLONG fdWrite(size_t fd,char *buffer,BBLONG bytes)
{
	int		res;
	DWORD count;
	res=WriteFile((HANDLE)fd,buffer,bytes,&count,0);
	if (res) return count;
	return 0;
}

int fdFlush(size_t fd)
{
	int		res;
	res=FlushFileBuffers((HANDLE)fd);
	return res;
}

int fdAvail(size_t fd)
{
	int		res;
	DWORD avail;
	res=PeekNamedPipe((HANDLE)fd,0,0,0,&avail,0);
	if (res) return avail;
	return 0;
}

//returns 1 for running, 0 for finished
int fdProcessStatus( PROCESS_INFORMATION * pi ){

	DWORD exitcode;

	if( GetExitCodeProcess( pi->hProcess,&exitcode ) ){

		if( exitcode==STILL_ACTIVE ) return 1;

		CloseHandle( pi->hProcess );
		free( pi );
	}
	return 0;
}

//returns 0 for success
int fdTerminateProcess( PROCESS_INFORMATION * pi ){

	int res=TerminateProcessGroup( pi->hProcess,pi->dwProcessId );

	CloseHandle( pi->hProcess );
	free( pi );

	return res;
}

//returns 0 for success
int fdKillProcess( PROCESS_INFORMATION * pi ){

	int res=KillProcessGroup( pi->hProcess,pi->dwProcessId );

	CloseHandle( pi->hProcess );
	free( pi );

	return res;
}

PROCESS_INFORMATION * fdProcess( BBString *cmd,size_t *procin,size_t *procout,size_t *procerr,int flags)
{
	int res;
	int pflags=CREATE_NEW_PROCESS_GROUP;
	PROCESS_INFORMATION *pi;
	SECURITY_ATTRIBUTES sa={sizeof(sa),0,1};
	HANDLE istr,p_ostr;	//our in-stream, process out-stream
	HANDLE ostr,p_istr;	//our out-stream, process in-stream
	HANDLE estr,p_estr;			//our errin-stream, process errout-stream

	if( !CreatePipe( &istr,&p_ostr,&sa,0 ) ){
		//unable to create pipe
		return 0;
	}

	if( !CreatePipe( &p_istr,&ostr,&sa,0 ) ){
		CloseHandle( istr );
		CloseHandle( p_ostr );
		//ditto
		return 0;
	}

	if (!CreatePipe(&estr,&p_estr,&sa,0)) {
		CloseHandle( istr );
		CloseHandle( p_ostr );
		CloseHandle( ostr );
		CloseHandle( p_istr );
		//unable to create pipe
		return 0;
	}

	pi=(PROCESS_INFORMATION*)calloc(1,sizeof(PROCESS_INFORMATION));

	if( _bbusew ){
		STARTUPINFOW si;
		ZeroMemory( &si, sizeof(si) );
		si.cb = sizeof(si);
		si.dwFlags=STARTF_USESTDHANDLES;
		si.wShowWindow=SW_HIDE;
		si.hStdInput=p_istr;
		si.hStdOutput=p_ostr;
		si.hStdError=p_estr;
		if (flags&HIDECONSOLE) {
			si.dwFlags|=STARTF_USESHOWWINDOW;
			si.wShowWindow=SW_HIDE;
		} 
		else if (flags&SHOWCONSOLE) {
			pflags|=CREATE_NEW_CONSOLE;
    	} 
    	else {
			pflags|=DETACHED_PROCESS;
		}
		BBChar *c = bbStringToWString(cmd);
		res=CreateProcessW( 0,c,0,0,-1,pflags,0,0,&si,pi );
		bbMemFree(c);
	}else{
		STARTUPINFO si;
		ZeroMemory( &si, sizeof(si) );
		si.cb = sizeof(si);
		si.dwFlags=STARTF_USESTDHANDLES;
		si.wShowWindow=SW_HIDE;
		si.hStdInput=p_istr;
		si.hStdOutput=p_ostr;
		si.hStdError=p_estr;
		if (flags&HIDECONSOLE) {
			si.dwFlags|=STARTF_USESHOWWINDOW;
			si.wShowWindow=SW_HIDE;
		} 
		else if (flags&SHOWCONSOLE) {
			pflags|=CREATE_NEW_CONSOLE;
		}
		else {
			pflags|=DETACHED_PROCESS;
		}
		char *c=(char *)bbStringToUTF8String( cmd );
		res=CreateProcess( 0,c,0,0,-1,pflags,0,0,&si,pi );
		bbMemFree(c);
	}

	if( !res ){
		CloseHandle( istr );
		CloseHandle( ostr );
		CloseHandle( estr );
		CloseHandle( p_istr );
		CloseHandle( p_ostr );
		CloseHandle( p_estr );
		return 0;
	}

	CloseHandle( pi->hThread );

	*procin=(size_t)istr;
	*procout=(size_t)ostr;
	*procerr=(size_t)estr;

	CloseHandle( p_istr );
	CloseHandle( p_ostr );
	CloseHandle( p_estr );

	return pi;
}

#endif
