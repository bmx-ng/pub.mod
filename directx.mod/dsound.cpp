#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <objbase.h>
#include <mmsystem.h>
#include <stdio.h>
#include "dsound.h"

extern "C" {

	int bmx_directsound_IDirectSound_release(IDirectSound * dsound);
	int bmx_directsound_IDirectSound_create(IDirectSound ** dsound);
	int bmx_directsound_IDirectSound_setcooperativeLevel(IDirectSound * dsound, HWND hwnd, int flags);
	int bmx_directsound_IDirectSound_duplicatesoundbuffer(IDirectSound * dsound, IDirectSoundBuffer * buffer, IDirectSoundBuffer ** buf);
	int bmx_directsound_IDirectSound_createsoundbuffer(IDirectSound * dsound, IDirectSoundBuffer ** buf, int length, int hertz, int format, int chans, int bps, int size, int flags, int mode);

	int bmx_directsound_IDirectSoundBuffer_release(IDirectSoundBuffer * buffer);
	int bmx_directsound_IDirectSoundBuffer_stop(IDirectSoundBuffer * buffer);
	int bmx_directsound_IDirectSoundBuffer_play(IDirectSoundBuffer * buffer, int res, int priority, int flags);
	int bmx_directsound_IDirectSoundBuffer_setvolume(IDirectSoundBuffer * buffer, int volume);
	int bmx_directsound_IDirectSoundBuffer_setpan(IDirectSoundBuffer * buffer, int pan);
	int bmx_directsound_IDirectSoundBuffer_setfrequency(IDirectSoundBuffer * buffer, int freq);
	int bmx_directsound_IDirectSoundBuffer_setcurrentposition(IDirectSoundBuffer * buffer, int pos);
	int bmx_directsound_IDirectSoundBuffer_lock(IDirectSoundBuffer * buffer, int offset, int size, void ** ptr1, int * bytes1, void ** ptr2, int * bytes2, int flags);
	int bmx_directsound_IDirectSoundBuffer_unlock(IDirectSoundBuffer * buffer, void * ptr1, int bytes1, void * ptr2, int bytes2);
	int bmx_directsound_IDirectSoundBuffer_getstatus(IDirectSoundBuffer * buffer, int * status);
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++

int bmx_directsound_IDirectSound_release(IDirectSound * dsound) {
	return dsound->Release();
}

int bmx_directsound_IDirectSound_create(IDirectSound ** dsound) {
	HINSTANCE dsoundlib;
	HRESULT WINAPI (*DirectSoundCreate)(LPGUID,LPDIRECTSOUND*,LPUNKNOWN);

	dsoundlib=LoadLibraryA("dsound");	
	DirectSoundCreate=(HRESULT WINAPI (*)(LPGUID,LPDIRECTSOUND*,LPUNKNOWN))GetProcAddress(dsoundlib,"DirectSoundCreate");
	int res=DirectSoundCreate(0,dsound,0);
	return res;
}

int bmx_directsound_IDirectSound_setcooperativeLevel(IDirectSound * dsound, HWND hwnd, int flags) {
	return dsound->SetCooperativeLevel(hwnd, flags);
}

int bmx_directsound_IDirectSound_duplicatesoundbuffer(IDirectSound * dsound, IDirectSoundBuffer * buffer, IDirectSoundBuffer ** buf) {
	return dsound->DuplicateSoundBuffer(buffer, buf);
}

int bmx_directsound_IDirectSound_createsoundbuffer(IDirectSound * dsound, IDirectSoundBuffer ** buf, int length, int hertz, int format, int chans, int bps, int size, int flags, int mode) {
	WAVEFORMATEX fmt;
	memset(&fmt, 0, sizeof(WAVEFORMATEX)); 

	fmt.wFormatTag = 1;
	fmt.nChannels = chans;
	fmt.nSamplesPerSec = hertz;
	fmt.wBitsPerSample = bps*8;
	fmt.nBlockAlign = fmt.wBitsPerSample/8*fmt.nChannels;
	fmt.nAvgBytesPerSec = fmt.nSamplesPerSec*fmt.nBlockAlign;

	DSBUFFERDESC desc;
	memset(&desc, 0, sizeof(DSBUFFERDESC)); 

	desc.dwSize = sizeof(DSBUFFERDESC);
	desc.dwFlags = DSBCAPS_GLOBALFOCUS|DSBCAPS_STATIC|DSBCAPS_CTRLPAN|DSBCAPS_CTRLVOLUME|DSBCAPS_CTRLFREQUENCY;
	if (mode==1 || ((flags & 2)!=2)) {
		desc.dwFlags |= DSBCAPS_LOCSOFTWARE;
	}
	desc.dwBufferBytes = size;
	desc.lpwfxFormat = &fmt;

	return dsound->CreateSoundBuffer( &desc,buf,0 );
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++

int bmx_directsound_IDirectSoundBuffer_release(IDirectSoundBuffer * buffer) {
	return buffer->Release();
}

int bmx_directsound_IDirectSoundBuffer_stop(IDirectSoundBuffer * buffer) {
	return buffer->Stop();
}

int bmx_directsound_IDirectSoundBuffer_play(IDirectSoundBuffer * buffer, int res, int priority, int flags) {
	return buffer->Play(res, priority, flags);
}

int bmx_directsound_IDirectSoundBuffer_setvolume(IDirectSoundBuffer * buffer, int volume) {
	return buffer->SetVolume(volume);
}

int bmx_directsound_IDirectSoundBuffer_setpan(IDirectSoundBuffer * buffer, int pan) {
	return buffer->SetPan(pan);
}

int bmx_directsound_IDirectSoundBuffer_setfrequency(IDirectSoundBuffer * buffer, int freq) {
	return buffer->SetFrequency(freq);
}

int bmx_directsound_IDirectSoundBuffer_setcurrentposition(IDirectSoundBuffer * buffer, int pos) {
	return buffer->SetCurrentPosition(pos);
}

int bmx_directsound_IDirectSoundBuffer_lock(IDirectSoundBuffer * buffer, int offset, int size, void ** ptr1, int * bytes1, void ** ptr2, int * bytes2, int flags) {
	DWORD b1, b2;
	int res = buffer->Lock(offset, size, ptr1, &b1, ptr2, &b2, flags);
	*bytes1 = b1;
	*bytes2 = b2;
	return res;
}

int bmx_directsound_IDirectSoundBuffer_unlock(IDirectSoundBuffer * buffer, void * ptr1, int bytes1, void * ptr2, int bytes2) {
	return buffer->Unlock(ptr1, bytes1, ptr2, bytes2);
}

int bmx_directsound_IDirectSoundBuffer_getstatus(IDirectSoundBuffer * buffer, int * status) {
	DWORD s;
	int res = buffer->GetStatus(&s);
	*status = s;
	return res;
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++


