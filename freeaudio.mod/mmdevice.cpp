// mmdevice.cpp
// windows mediadevice version 2

#include "freeaudio.h"

#ifdef _WIN32

#define WIN32_LEAN_AND_MEAN

#include <windows.h>
#include <mmsystem.h>
#include <malloc.h>
#include <stdio.h>

extern "C" audiodevice *OpenMultiMediaDevice();

static void __stdcall audioTimerProc( UINT id,UINT msg,DWORD_PTR user,DWORD_PTR u1,DWORD_PTR u2 );

struct pcmsetting
{
	WAVEFORMATEX	wf; 

	pcmsetting(int freq,int chan,int bits)
	{
		wf.wFormatTag=WAVE_FORMAT_PCM; 
		wf.nChannels=chan; 
		wf.nSamplesPerSec=freq;
		wf.nBlockAlign=chan*bits/8;
		wf.nAvgBytesPerSec=freq*wf.nBlockAlign;
		wf.wBitsPerSample=bits;
		wf.cbSize=0;
	}
};

struct abuffer {
	LPWAVEHDR	hdr;
	u8			*data;
	int			id;

	void init(HWAVEOUT device,int size,int n) {
		hdr=(LPWAVEHDR)malloc(sizeof(WAVEHDR));
		data=(u8*)calloc(size,1);
		id=n;
		hdr->lpData=(LPSTR)data;
		hdr->dwBufferLength=size;
		hdr->dwUser=(DWORD_PTR)this;
		hdr->dwFlags=WHDR_BEGINLOOP|WHDR_ENDLOOP;
		hdr->dwLoops=0x7fffffff;
		waveOutPrepareHeader(device,hdr,sizeof(WAVEHDR));
	}

	void play(HWAVEOUT device) {
		if (waveOutWrite(device,hdr,sizeof(WAVEHDR))) {
			printf("waveOutWrite error\n");
		}
	}

	void finit(HWAVEOUT device) {
		waveOutUnprepareHeader(device,hdr,sizeof(WAVEHDR)); 
		free(data);data=0;
		free(hdr);hdr=0;
	}
};

struct winmmdevice:audiodevice {
	HWAVEOUT	device; 
	int 		buffersize;
	int			samplesize;		//1=8 bit 2=16bit
	abuffer 	buffer;
	int 		bnum;
	int 		mode;			//0=8bit 1=16bit
	int 		playing;
	int			timer;
	int			playpos,mixpos;
	int			timeout;
	int			lagbuffers;
	
	int reset()
	{
		int sz=2048; // 20ms fragment size		
		mix=new mixer(sz);
		device=0;
		buffersize=0;
		bnum=0;
		mode=0;
		playing=0;
		timer=0;
		timeout=0;
		playpos=0;
		mixpos=0;
		return init(44100,2,16,sz);
	}

	int close()
	{
		playing=0;
		if (timer) timeKillEvent( timer );
		timer=0;
		mix->releaseall();
		if (device)
		{
			waveOutReset(device);
			buffer.finit(device); 
			waveOutClose(device);
		}
	}
		
	int init(int freq,int channels,int bits,int size)
	{
		pcmsetting	pcm(freq,channels,bits);
		if (bits==8) {mode=0;samplesize=1;} else {mode=1;samplesize=2;}
		if (waveOutOpen(&device,WAVE_MAPPER,&pcm.wf,0,(DWORD_PTR)this,0)) return 1;
		buffersize=size;
		bnum=0;
		mix->freq=freq;
		mix->channels=channels;
		buffer.init(device,size*samplesize*32,0);
		timeSetEvent(5,5,audioTimerProc,(DWORD_PTR)this,TIME_ONESHOT);//PERIODIC );
		timeout=0;
		playing=1;
		lagbuffers=6;
		flip();
		buffer.play(device);
		return 0;
	}

	void flip()
	{
		MMTIME	time;
		int		err;

		if (playing==0) return;
		if (timeout)
		{
			if (--timeout) return;
			buffer.play(device);
		}
		memset(&time,0,sizeof(MMTIME));
   		time.wType=TIME_BYTES;
		err=waveOutGetPosition(device,&time,sizeof(MMTIME));		

		if (time.wType!=TIME_BYTES) err=-666;else if (time.u.cb>0x10000000) err=-6667;
		if (err) {
//			printf("waveOutGetPosition failed err=%d\n",err);fflush(stdout);
			waveOutReset(device);
			mixpos=0;
			memset(buffer.data,0,buffersize*samplesize*32);
			buffer.play(device);
			return;
		}
		
		int wavepos=time.u.cb/samplesize;
		int writeahead=buffersize*lagbuffers;
		if (wavepos && wavepos+buffersize*2>mixpos)
		{
			timeout=250;
			memset(buffer.data,0,buffersize*samplesize*32);
			waveOutReset(device);
			if (lagbuffers<10) lagbuffers+=2;
			mixpos=buffersize*lagbuffers*2;
//			printf("collision");fflush(stdout);
			return;			
		}
		int seek=wavepos+writeahead;				
		while (mixpos<seek)
		{
			int f=(mixpos/buffersize)&31;
			if (mode==0) 
			{
				mix->mix8(buffer.data+f*buffersize);
			}
			else
			{
				mix->mix16((short *)buffer.data+f*buffersize);
			}
			mixpos+=buffersize;	
		}
	}
};

static void __stdcall audioTimerProc( UINT id,UINT msg,DWORD_PTR user,DWORD_PTR u1,DWORD_PTR u2 ) {
	((winmmdevice *)user)->flip();
	timeSetEvent(5,5,audioTimerProc,(DWORD_PTR)user,TIME_ONESHOT);
}

audiodevice *OpenMultiMediaDevice() {
	return new winmmdevice();
}

#endif

