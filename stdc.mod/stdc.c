
#include <stdio.h>
#include <dirent.h>

#if _WIN32
#define _USE_32BIT_TIME_T 
#endif
#include <sys/types.h>
#include <sys/stat.h>

#if _WIN32

#include <time.h>
#include <direct.h>

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <utime.h>
#include <fileapi.h>
#include <fcntl.h>
#include <io.h>


extern int _bbusew;

#else

#include <time.h>
#include <unistd.h>
#include <limits.h>	//PATH_MAX
#include <sys/time.h>
#include <utime.h>

#endif

#if __APPLE__
#include <TargetConditionals.h>
#endif

#include <brl.mod/blitz.mod/blitz.h>
 
FILE* stdin_;
FILE* stdout_;
FILE* stderr_;

int setbinarymode_(FILE *stream) {
	if (!stream) return 0;
#if _WIN32
	return _setmode(_fileno(stream), _O_BINARY) != -1;
#else
	return 1;
#endif
}



#if _WIN32

int getchar_(){
	if( _bbusew ) return getwchar();
	return getchar();
}

int puts_( BBString *str ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( str );
		int res = _putws( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( str );
	int res = puts( p );
	bbMemFree(p);
	return res;
}

int putenv_( BBString *str ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( str );
		int res = _wputenv( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( str );
	int res = putenv( p );
	bbMemFree(p);
	return res;
}

BBString *getenv_( BBString *str ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( str );
		BBString * res = bbStringFromWString( _wgetenv( p ) );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( str );
	BBString * res = bbStringFromCString( getenv( p ) );
	bbMemFree(res);
	return res;
}

int fputs_( BBString *str,FILE* file ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( str );
		int res = fputws( p,file );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( str );
	int res = fputs( p,file );
	bbMemFree(p);
	return res;
}

int chdir_( BBString *path ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( path );
		int res = _wchdir( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( path );
	int res = _chdir( p );
	bbMemFree(p);
	return res;
}

FILE* fopen_( BBString *file,BBString *mode ){
	if( _bbusew ) {
		BBChar *f=bbStringToWString( file );
		BBChar *m=bbStringToWString( mode );
		FILE * res = _wfopen( f, m );
		bbMemFree(m);
		bbMemFree(f);
		return res;
	}
	char *f=bbStringToCString( file );
	char *m=bbStringToCString( mode );
	FILE * res = fopen( f, m );
	bbMemFree(m);
	bbMemFree(f);
	return res;
}

BBString *getcwd_(){
	if( _bbusew ){
		wchar_t buf[MAX_PATH];
		_wgetcwd( buf,MAX_PATH );
		return bbStringFromWString( buf );
	}else{
		char buf[MAX_PATH];
		_getcwd( buf,MAX_PATH );
		return bbStringFromCString( buf );
	}
	return &bbEmptyString;
}

int chmod_( BBString *path,int mode ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( path );
		int res = _wchmod( p,mode );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( path );
	int res = _chmod( p,mode );
	bbMemFree(p);
	return res;
}

int mkdir_( BBString *path,int mode ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( path );
		int res = _wmkdir( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( path );
	int res = _mkdir( p );
	bbMemFree(p);
	return res;
}

int rmdir_( BBString *path ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( path );
		int res = _wrmdir( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( path );
	int res = _rmdir( p );
	bbMemFree(p);
	return res;
}

int rename_( BBString *src,BBString *dst ){
	if( _bbusew ) {
		BBChar *s=bbStringToWString( src );
		BBChar *d=bbStringToWString( dst );
		int res = _wrename( s, d );
		bbMemFree(d);
		bbMemFree(s);
		return res;
	}
	char *s=bbStringToCString( src );
	char *d=bbStringToCString( dst );
	int res = rename( s, d );
	bbMemFree(d);
	bbMemFree(s);
	return res;
}

void remove_( BBString *path ){
	chmod_( path,0x1b6 );
	if( _bbusew ){
		BBChar *p=bbStringToWString( path );
		_wremove( p );
		bbMemFree(p);
	}else{
		char *p=bbStringToCString( path );
		remove( p );
		bbMemFree(p);
	}
}

void* opendir_( BBString *path ){
	if( _bbusew ) {
		BBChar *p=bbStringToWString( path );
		void * res = _wopendir( p );
		bbMemFree(p);
		return res;
	}
	char *p=bbStringToCString( path );
	void * res = opendir( p );
	bbMemFree(p);
	return res;
}

int closedir_( void* dir ){
	if( _bbusew ) return _wclosedir( (_WDIR*)dir );
	return closedir( (DIR*)dir );
}

BBString *readdir_( void* dir ){
	if( _bbusew ){
		struct _wdirent *t=_wreaddir( (_WDIR*)dir );
		return t ? bbStringFromWString( t->d_name ) : &bbEmptyString;
	}
	struct dirent *t=readdir( (DIR*)dir );
	return t ? bbStringFromCString( t->d_name ) : &bbEmptyString;
}

int stat_( BBString *path,int *t_mode,BBLONG *t_size,int *t_mtime,int *t_ctime,int *t_atime ){
	int i;
	struct _stati64 st;
	
	for( i=0;i<path->length;++i ){
		if( path->buf[i]=='<' || path->buf[i]=='>' ) return -1;
	}
	
	if( _bbusew ){
		BBChar *p = bbStringToWString(path);
		if( _wstati64( p,&st ) ) {
			bbMemFree(p);
			return -1;
		}
		bbMemFree(p);
	}else{
		char *p = bbStringToCString(path);
		if( _stati64( p,&st ) ) {
			bbMemFree(p);
			return -1;
		}
		bbMemFree(p);
	}

	*t_mode=st.st_mode;
	*t_size=st.st_size;
	*t_mtime=st.st_mtime;
	*t_ctime=st.st_ctime;
	*t_atime=st.st_atime;
	return 0;
}

int stat64_( BBString *path,int *t_mode,BBLONG *t_size,BBLONG *t_mtime,BBLONG *t_ctime,BBLONG *t_atime ){
	int i;
	struct _stati64 st;
	
	for( i=0;i<path->length;++i ){
		if( path->buf[i]=='<' || path->buf[i]=='>' ) return -1;
	}
	
	if( _bbusew ){
		BBChar *p = bbStringToWString(path);
		if( _wstati64( p,&st ) ) {
			bbMemFree(p);
			return -1;
		}
		bbMemFree(p);
	}else{
		char *p = bbStringToCString(path);
		if( _stati64( p,&st ) ) {
			bbMemFree(p);
			return -1;
		}
		bbMemFree(p);
	}

	*t_mode=st.st_mode;
	*t_size=st.st_size;
	*t_mtime=st.st_mtime;
	*t_ctime=st.st_ctime;
	*t_atime=st.st_atime;
	return 0;
}

int system_( BBString *cmd ){
	int res;
	PROCESS_INFORMATION pi={0};
	
	if( _bbusew ){
		STARTUPINFOW si={sizeof(si)};
		wchar_t *tmp = bbStringToWString(cmd);
	
		if( CreateProcessW( 0,tmp,0,0,1,CREATE_DEFAULT_ERROR_MODE,0,0,&si,&pi ) ){
			WaitForSingleObject( pi.hProcess,INFINITE );
	
			res=GetExitCodeProcess( pi.hProcess,(DWORD*)&res ) ? res : -1;
	
			CloseHandle( pi.hProcess );
			CloseHandle( pi.hThread );
		}else{
			res=GetLastError();
		}
		bbMemFree(tmp);
		
	} else {
		STARTUPINFO si={sizeof(si)};
		char *tmp = bbStringToCString(cmd);
	
		if( CreateProcessA( 0,tmp,0,0,1,CREATE_DEFAULT_ERROR_MODE,0,0,&si,&pi ) ){
			WaitForSingleObject( pi.hProcess,INFINITE );
	
			res=GetExitCodeProcess( pi.hProcess,(DWORD*)&res ) ? res : -1;
	
			CloseHandle( pi.hProcess );
			CloseHandle( pi.hThread );
		}else{
			res=GetLastError();
		}
		bbMemFree(tmp);
	}
	return res;
}

int fseek_( FILE* stream, BBLONG offset, int origin ) {
	return (_fseeki64(stream, offset, origin) == 0) ? 0 : 1;
}

BBLONG ftell_( FILE* stream ) {
	return _ftelli64(stream);
}

int ftruncate_(FILE* stream, BBLONG size) {
	return _chsize_s(fileno(stream), size);
}

int utime_( BBString *path, int type, BBLONG time){
	struct _utimbuf times = {0,0};
	
	if ( type == 0 ) {
		times.modtime = time;
	} else if ( type == 2 ) {
		times.actime = time;
	} else {
		return -1;
	}
	
	wchar_t *p = bbStringToWString(path);
	
	struct _stati64 st;
	if (_wstati64(p, &st)) {
		bbMemFree(p);
		return -1;
	}
	
	int res = 0;
	
	if (S_ISDIR(st.st_mode)) {
		HANDLE dirHandle = CreateFileW(p, FILE_WRITE_ATTRIBUTES, 
			FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 
			FILE_FLAG_BACKUP_SEMANTICS, NULL);
		
		if (dirHandle == INVALID_HANDLE_VALUE) {
			return -1;
		}
		
		FILETIME ft;

		int64_t convTime = (int64_t)time * 10000000 + 116444736000000000;
		ft.dwLowDateTime = (DWORD)convTime;
		ft.dwHighDateTime = convTime >> 32;

		if (!SetFileTime(dirHandle, type == 1 ? &ft : NULL, type == 2 ? &ft : NULL, type == 0 ? &ft : NULL)) {
			res = -1;
		}
		
		CloseHandle(dirHandle);
	} else {
		res = _wutime( p, &times);
	}
	
	bbMemFree(p);
	
	return res == 0 ? 0 : -1;
}

typedef DWORD (WINAPI *GetFinalPathNameByHandleW_t)(HANDLE, LPWSTR, DWORD, DWORD);

BBString * readlink_( BBString * path ) {
    // Load kernel32.dll and get the address of GetFinalPathNameByHandleW
    HMODULE hModule = LoadLibraryW(L"kernel32.dll");
    if (!hModule) {
        return &bbEmptyString;
    }
    
    GetFinalPathNameByHandleW_t pGetFinalPathNameByHandleW = 
        (GetFinalPathNameByHandleW_t)GetProcAddress(hModule, "GetFinalPathNameByHandleW");

    if (!pGetFinalPathNameByHandleW) {
        FreeLibrary(hModule);
        return &bbEmptyString;
    }

    WCHAR * p = bbStringToWString( path );
    
    // Check if the path is a symbolic link
    DWORD attributes = GetFileAttributesW(p);
    if (attributes == INVALID_FILE_ATTRIBUTES || !(attributes & FILE_ATTRIBUTE_REPARSE_POINT)) {
        bbMemFree(p);
        FreeLibrary(hModule);
        return &bbEmptyString;
    }

    HANDLE hFile = CreateFileW(
        p, 
        0, 
        FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, 
        NULL, 
        OPEN_EXISTING, 
        FILE_FLAG_BACKUP_SEMANTICS, 
        NULL
    );
    bbMemFree(p);

    if (hFile == INVALID_HANDLE_VALUE) {
        FreeLibrary(hModule);
        return &bbEmptyString;
    }

    WCHAR buf[MAX_PATH];
    DWORD res = pGetFinalPathNameByHandleW(hFile, buf, MAX_PATH, FILE_NAME_NORMALIZED);
    CloseHandle(hFile);
    FreeLibrary(hModule);

    return res > 0 && res < MAX_PATH ? bbStringFromWString(buf) : &bbEmptyString;
}

#else

int getchar_(){
	return getchar();
}

int puts_( BBString *str ){
	char *p = (char *)bbStringToUTF8String( str );
	int res = puts( p );
	bbMemFree(p);
	return res;
}

int putenv_( BBString *str ){
	char *t=(char *)bbStringToUTF8String( str );
	char *p=(char*)malloc( strlen(t)+1 );
	strcpy( p,t );
	bbMemFree(t);
	return putenv( p );
}

BBString *getenv_( BBString *str ){
	char *p = (char *)bbStringToUTF8String( str );
	BBString * res = bbStringFromUTF8String( (const unsigned char *)getenv( p ) );
	bbMemFree(p);
	return res;
}

FILE* fopen_( BBString *file,BBString *mode ){
	char *f = (char *)bbStringToUTF8String( file );
	char *m = (char *)bbStringToUTF8String( mode );
	FILE * res = fopen( f, m );
	bbMemFree(m);
	bbMemFree(f);
	return res;
}

int fputs_( BBString *str,FILE* file ){
	char *p = (char *)bbStringToUTF8String( str );
	int res = fputs( p,file );
	bbMemFree(p);
	return res;
}

int chdir_( BBString *path ){
	char *p = (char *)bbStringToUTF8String( path );
	int res = chdir( p );
	bbMemFree(p);
	return res;
}

BBString *getcwd_(){
	char buf[PATH_MAX];
	char *res = getcwd( buf,PATH_MAX );
	return res ? bbStringFromUTF8String( (const unsigned char *)buf ) : &bbEmptyString;
}

int chmod_( BBString *path,int mode ){
	char *p = (char *)bbStringToUTF8String( path );
	int res = chmod( p, mode );
	bbMemFree(p);
	return res;
}

int mkdir_( BBString *path,int mode ){
	char *p = (char *)bbStringToUTF8String( path );
	int res = mkdir( p, mode );
	bbMemFree(p);
	return res;
}

int rmdir_( BBString *path ){
	char *p = (char *)bbStringToUTF8String( path );
	int res = rmdir( p );
	bbMemFree(p);
	return res;
}

int rename_( BBString *src,BBString *dst ){
	char *s = (char *)bbStringToUTF8String( src );
	char *d = (char *)bbStringToUTF8String( dst );
	int res = rename( s, d );
	bbMemFree(d);
	bbMemFree(s);
	return res;
}

int remove_( BBString *path ){
	char *p = (char *)bbStringToUTF8String( path );
	int res = remove( p );
	bbMemFree(p);
	return res;
}

DIR* opendir_( BBString *path ){
	char *p = (char *)bbStringToUTF8String( path );
	DIR * res = opendir( p );
	bbMemFree(p);
	return res;
}

BBString *readdir_( DIR* dir ){
	struct dirent *t=readdir( dir );
	return t ? bbStringFromUTF8String( (const unsigned char *)t->d_name ) : &bbEmptyString;
}

int closedir_( DIR* dir ){
	return closedir( dir );
}

int stat_( BBString *path,int *t_mode,BBLONG *t_size,int *t_mtime,int *t_ctime,int *t_atime ){
	struct stat st;
	char *p = (char *)bbStringToUTF8String( path );
	if( stat( p,&st ) ) {
		bbMemFree(p);
		return -1;
	}
	bbMemFree(p);
	*t_mode=st.st_mode;
	*t_size=st.st_size;
	*t_mtime=st.st_mtime;
	*t_ctime=st.st_ctime;
	*t_atime=st.st_atime;
	return 0;
}

int stat64_( BBString *path,int *t_mode,BBLONG *t_size,BBLONG *t_mtime,BBLONG *t_ctime,BBLONG *t_atime ){
	struct stat st;
	char *p = (char *)bbStringToUTF8String( path );
	if( stat( p,&st ) ) {
		bbMemFree(p);
		return -1;
	}
	bbMemFree(p);
	*t_mode=st.st_mode;
	*t_size=st.st_size;
	*t_mtime=st.st_mtime;
	*t_ctime=st.st_ctime;
	*t_atime=st.st_atime;
	return 0;
}

int utime_( BBString *path, int type, BBLONG time){
	struct utimbuf times = {0,0};

	if ( type == 0 ) {
		times.modtime = time;
	} else if ( type == 2 ) {
		times.actime = time;
	} else {
		return -1;
	}

	char *p = (char*)bbStringToUTF8String( path );
	int res = utime( p, &times);
	bbMemFree(p);
	
	return res == 0 ? 0 : -1;
}

int system_( BBString *cmd ){
#if TARGET_OS_IPHONE || TARGET_OS_TV
	bbExThrowCString("Not available on iOS");
	return -1;
#elif defined(__ANDROID__)
	bbExThrowCString("Not available on Android");
	return -1;
#else
	char *p = (char *)bbStringToUTF8String( cmd );
	int res = system( p );
	bbMemFree(p);
	return res;
#endif	
}

int fseek_( FILE* stream, BBLONG offset, int origin ) {
	return fseeko(stream, offset, origin);
}

BBLONG ftell_( FILE* stream ) {
	return ftello(stream);
}

int ftruncate_(FILE* stream, BBLONG size) {
	return ftruncate(fileno(stream), size);
}

BBString * readlink_( BBString * path ) {
	char * p = (char *)bbStringToUTF8String( path );
	char buf[PATH_MAX];
	int res = readlink( p, buf, PATH_MAX );
	bbMemFree(p);
	return res >= 0 ? bbStringFromUTF8String( (const unsigned char *)buf ) : &bbEmptyString;
}

#endif

int fclose_( FILE* stream ) {
	return fclose(stream);
}

int feof_(FILE* stream) {
	return feof(stream);
}

int fflush_( FILE* stream ) {
	return fflush(stream);
}


void bb_stdc_Startup(){


	stdin_=stdin;
	stdout_=stdout;
	stderr_=stderr;
	
}
