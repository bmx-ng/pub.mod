// pulseaudiodevice.cpp
// sudo apt-get install libpulse-dev

#ifdef __linux

#include "freeaudio.h"

#include <unistd.h>
#include <pulse/simple.h>
#include <pthread.h>

extern "C" audiodevice *OpenPulseAudioDevice();

#include <dlfcn.h>

extern "C" {

static void *_pulse;
static pa_simple*(*pulse_pa_simple_new)(const char *, const char *, pa_stream_direction_t , const char *, const char *, const pa_sample_spec *, const pa_channel_map *, const pa_buffer_attr *, int *);
static void(*pulse_pa_simple_free)(pa_simple *);
static int(*pulse_pa_simple_write)(pa_simple *, const void *, size_t, int *);

int LoadPulse(){
	_pulse = dlopen( "libpulse-simple.so.0",RTLD_NOW );

	return _pulse!=0;
}

void InitPulse(){

	if( !_pulse ) return;
	
	pulse_pa_simple_new = (pa_simple* (*)(const char *, const char *, pa_stream_direction_t , const char *, const char *, const pa_sample_spec *, const pa_channel_map *, const pa_buffer_attr *, int *))dlsym(_pulse, "pa_simple_new");
	pulse_pa_simple_free = (void (*)(pa_simple *))dlsym(_pulse, "pa_simple_free");
	pulse_pa_simple_write = (int (*)(pa_simple *, const void *, size_t , int *))dlsym(_pulse, "pa_simple_write");
}

}

void *pulseaudiothread(void*dev);

#define LINUXFRAG 2048

struct pulseaudiodevice:audiodevice{
	pthread_t audiothread;
	int threadid;

	int running;
	int playing;
	int error;

	short *buffer;
	int buffersize;	//in bytes
		
	pa_simple *simple;
	
	static void *pulseaudiothread(void *arg){
		pulseaudiodevice* audio;
		audio=(pulseaudiodevice*)arg;
		audio->run();
		return 0;
	}
		
	int reset(){
	
		pa_sample_spec stereo16;
	
		running=0;
		playing=0;
		
		stereo16.format=PA_SAMPLE_S16LE;
		stereo16.rate=44100;
		stereo16.channels=2;

		simple=pulse_pa_simple_new(NULL,"freeaudio",PA_STREAM_PLAYBACK,NULL,"playback",&stereo16,NULL,NULL,&error);
		if (simple==NULL) return -1;

		mix=new mixer(LINUXFRAG);
		mix->freq=44100;
		mix->channels=2;

		buffer=new short[LINUXFRAG];
		buffersize=LINUXFRAG*2;

		pthread_attr_t	attr;
		pthread_attr_init(&attr);

		running=1;
		threadid=pthread_create(&audiothread,&attr,pulseaudiothread,(void*)this);	
		return 0;
	}
	
	int close(){
		if (simple) {
			int timeout;
			running=0;
			timeout=500;
			while (timeout-- && playing){
				usleep( 10*1000 );
			}
			pulse_pa_simple_free(simple);
		}
		return 0;
	}

	void run(){
		int data;
		int res;
		
		playing=1;
		while (playing && running){
			mix->mix16(buffer);
			int err=pulse_pa_simple_write(simple, buffer, buffersize, &error);
			if (err<0) break;			
		}
		playing=0;
	}

};

audiodevice *OpenPulseAudioDevice(){
	if (LoadPulse()) {
		InitPulse();
		return new pulseaudiodevice();
	}
	return 0;
}

#endif
