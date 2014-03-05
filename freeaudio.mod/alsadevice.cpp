// alsadevice.cpp

#ifdef __linux

#include "freeaudio.h"

#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/soundcard.h>
#include <pthread.h>

#include <alsa/asoundlib.h>

extern "C" audiodevice *OpenALSADevice();


#include <dlfcn.h>

extern "C" {

static void *_alsa;
static size_t(*alsa_snd_pcm_hw_params_sizeof)();
static int(*alsa_snd_pcm_open)(snd_pcm_t **pcm, const char *name, snd_pcm_stream_t stream, int mode);
static int(*alsa_snd_pcm_hw_params_any)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params);
static int(*alsa_snd_pcm_hw_params_set_access)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_access_t _access);
static int(*alsa_snd_pcm_hw_params_set_format)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_format_t val);
static int(*alsa_snd_pcm_hw_params_set_rate_near)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int *val, int *dir);
static int(*alsa_snd_pcm_hw_params_set_channels)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int val);
static int(*alsa_snd_pcm_hw_params_set_period_size_near)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_uframes_t *val, int *dir);
static int(*alsa_snd_pcm_hw_params_set_periods_near)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int *val, int *dir);
static int(*alsa_snd_pcm_hw_params)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params);
static snd_pcm_sframes_t(*alsa_snd_pcm_writei)(snd_pcm_t *pcm, const void *buffer, snd_pcm_uframes_t size);
static int(*alsa_snd_pcm_prepare)(snd_pcm_t *pcm);
static int(*alsa_snd_pcm_drop)(snd_pcm_t *pcm);
static int(*alsa_snd_pcm_close)(snd_pcm_t *pcm);

int LoadALSA(){
	_alsa = dlopen( "libasound.so.2",RTLD_NOW );

	return _alsa!=0;
}

void InitALSA(){

	if( !_alsa ) return;

	alsa_snd_pcm_hw_params_sizeof = (size_t (*)())dlsym(_alsa, "snd_pcm_hw_params_sizeof");
	alsa_snd_pcm_open = (int (*)(snd_pcm_t **pcm, const char *name, snd_pcm_stream_t stream, int mode))dlsym(_alsa, "snd_pcm_open");
	alsa_snd_pcm_hw_params_any = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params))dlsym(_alsa, "snd_pcm_hw_params_any");
	alsa_snd_pcm_hw_params_set_access = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_access_t _access))dlsym(_alsa, "snd_pcm_hw_params_set_access");
	alsa_snd_pcm_hw_params_set_format = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_format_t val))dlsym(_alsa, "snd_pcm_hw_params_set_format");
	alsa_snd_pcm_hw_params_set_rate_near = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int *val, int *dir))dlsym(_alsa, "snd_pcm_hw_params_set_rate_near");
	alsa_snd_pcm_hw_params_set_channels = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int val))dlsym(_alsa, "snd_pcm_hw_params_set_channels");
	alsa_snd_pcm_hw_params_set_period_size_near = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, snd_pcm_uframes_t *val, int *dir))dlsym(_alsa, "snd_pcm_hw_params_set_period_size_near");
	alsa_snd_pcm_hw_params_set_periods_near = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params, unsigned int *val, int *dir))dlsym(_alsa, "snd_pcm_hw_params_set_periods_near");
	alsa_snd_pcm_hw_params = (int (*)(snd_pcm_t *pcm, snd_pcm_hw_params_t *params))dlsym(_alsa, "snd_pcm_hw_params");
	alsa_snd_pcm_writei = (snd_pcm_sframes_t (*)(snd_pcm_t *pcm, const void *buffer, snd_pcm_uframes_t size))dlsym(_alsa, "snd_pcm_writei");
	alsa_snd_pcm_prepare = (int (*)(snd_pcm_t *pcm))dlsym(_alsa, "snd_pcm_prepare");
	alsa_snd_pcm_drop = (int (*)(snd_pcm_t *pcm))dlsym(_alsa, "snd_pcm_drop");
	alsa_snd_pcm_close = (int (*)(snd_pcm_t *pcm))dlsym(_alsa, "snd_pcm_close");
}



}

void *audiothread(void *dev);

#define LINUXFRAG 2048

struct alsaaudio:audiodevice{
	pthread_t	audiopthread;
	int			threadid;
	int			running,playing;
	short		*buffer;
	int			buffersize;	//in bytes
	
	int reset(){
		running=1;
		playing=0;
		mix=new mixer(LINUXFRAG);
		mix->freq=44100;
		mix->channels=2;
		buffer=new short[LINUXFRAG];
		buffersize=LINUXFRAG*2;
		pthread_attr_t	attr;
		pthread_attr_init(&attr);
		threadid=pthread_create(&audiopthread,&attr,audiothread,(void*)this);	
		return 0;
	}
	
	int close(){	
		int		timeout;
		running=0;
		timeout=5;
		while (timeout-- && playing) sleep(1);
		return 0;
	}
};


void *audiothread(void *v){
	int						policy;
	sched_param		sched;	
	int						err;
	alsaaudio 		*dev;
	
	pthread_getschedparam(pthread_self(),&policy,&sched);
	sched.sched_priority++;//policy=SCHED_RR;
	pthread_setschedparam(pthread_self(),policy,&sched);	
	dev=(alsaaudio*)v;

	unsigned int val;
	
	snd_pcm_t *fd;
	snd_pcm_uframes_t periodsize;
	snd_pcm_hw_params_t *hwparams;
	/*snd_pcm_hw_params_alloca(&hwparams);  expanded definition below... */
	do { hwparams = (snd_pcm_hw_params_t *) alloca(alsa_snd_pcm_hw_params_sizeof()); memset(hwparams, 0, alsa_snd_pcm_hw_params_sizeof()); } while (0);
	int output_rate;
	int channels;
	int fragment_size;
	int fragment_count;

	err=alsa_snd_pcm_open(&fd, strdup("default"), SND_PCM_STREAM_PLAYBACK, 0);
	if (err<0) return v;

	fragment_size=LINUXFRAG;  //overall buffer size
	fragment_count=2; //2 - 16 fragment count - 2 minimum, the lower it is potentially the lower the latency

//configure device
	if (alsa_snd_pcm_hw_params_any(fd, hwparams) < 0) {
		//printf("linuxaudio failed at params any\n");
		return v;
	}	
	if (alsa_snd_pcm_hw_params_set_access(fd, hwparams,SND_PCM_ACCESS_RW_INTERLEAVED) < 0) {
		//printf("linuxaudio failed at set access\n");
		return v;
	}	
	
	if (alsa_snd_pcm_hw_params_set_format(fd, hwparams,SND_PCM_FORMAT_S16_LE) < 0) {
		//printf("linuxaudio failed at set format\n");
		return v;
	}
	val = 44100;
	if (alsa_snd_pcm_hw_params_set_rate_near(fd, hwparams,&val, 0) < 0) {
		// Try 48KHZ too 
		//printf("linuxaudio - %d HZ not available, trying 48000HZ\n", output_rate);
		val = 48000;
		if (alsa_snd_pcm_hw_params_set_rate_near(fd, hwparams,&val, 0) < 0) {
			//printf("linuxaudio failed at setting output rate (%d)\n", output_rate);
			return v;
		}
		dev->mix->freq=val;		
	}
	channels=2;
	if (alsa_snd_pcm_hw_params_set_channels(fd, hwparams, channels) < 0) {
		//printf("linuxaudio failed at set channels (%d)\n", channels);
		return v;
	}
	periodsize = (fragment_size) / 4; // bytes -> frames for 16-bit,stereo - should be a minimum of 512
	if (alsa_snd_pcm_hw_params_set_period_size_near(fd, hwparams,&periodsize, 0) < 0) {
		//printf("linuxaudio failed at set period size (%d)\n", (int)periodsize);			
		return v;
	}
	val = fragment_count;
	if (alsa_snd_pcm_hw_params_set_periods_near(fd, hwparams,&val, 0) < 0) {
		//printf("linuxaudio failed at set periods (%d)\n", val);			
		//should attempt a one by one period increase up to 16?
		return v;
	}
	if (alsa_snd_pcm_hw_params(fd, hwparams) < 0) {
		//printf("linuxaudio failed at installing hw params\n");
		return v;
	}
	//loop while playing sound
	dev->playing=1;
	while (dev->playing)
	{
		dev->mix->mix16(dev->buffer);
		if ((alsa_snd_pcm_writei (fd, dev->buffer,LINUXFRAG/2)) < 0) {	//Half buffer for two channels?
			//printf ("linuxaudio warning: buffer underrun occurred\n");
			if (alsa_snd_pcm_prepare(fd) < 0) {
				//printf ("linuxaudio failed at preparing pcm\n");
				dev->playing=0; //die gracefully
			}
		}	
	}
	alsa_snd_pcm_drop(fd);
	alsa_snd_pcm_close (fd);
	return 0;
}

audiodevice *OpenALSADevice(){
	if (LoadALSA()) {
		InitALSA();
		return new alsaaudio();
	}
	
	return 0;
}

#endif
