
Strict

Module Pub.OggVorbis

ModuleInfo "Version: 1.08"
ModuleInfo "License: OggVorbis License"
ModuleInfo "Copyright: Xiph.Org Foundation http://www.xiph.org/"
ModuleInfo "Credit: Adapted for BlitzMax by Simon Armstrong"
ModuleInfo "Modserver: BRL"

ModuleInfo "History: 1.08"
ModuleInfo "History: Update to libogg-1.3.1 and libvorbis-1.3.4"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Hacked around Lion llvm bug in libvorbis-1.1.2/lib/os.h"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Moved Encode_OGG stub to axe.oggsaver module"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Added Encode_OGG stub"
ModuleInfo "History: Updated to libogg-1.1.3 and libvorbis-1.2.3"

Import "libogg-1.3.1/include/*.h"
Import "libogg-1.3.1/src/bitwise.c"
Import "libogg-1.3.1/src/framing.c"

Import "libvorbis-1.3.4/include/*.h"
Import "libvorbis-1.3.4/lib/bitrate.c"
Import "libvorbis-1.3.4/lib/block.c"
Import "libvorbis-1.3.4/lib/codebook.c"
Import "libvorbis-1.3.4/lib/envelope.c"
Import "libvorbis-1.3.4/lib/floor0.c"
Import "libvorbis-1.3.4/lib/floor1.c"
Import "libvorbis-1.3.4/lib/info.c"
Import "libvorbis-1.3.4/lib/lpc.c"
Import "libvorbis-1.3.4/lib/lsp.c"
Import "libvorbis-1.3.4/lib/mapping0.c"
Import "libvorbis-1.3.4/lib/mdct.c"
Import "libvorbis-1.3.4/lib/psy.c"
Import "libvorbis-1.3.4/lib/registry.c"
Import "libvorbis-1.3.4/lib/res0.c"
Import "libvorbis-1.3.4/lib/sharedbook.c"
Import "libvorbis-1.3.4/lib/smallft.c"
Import "libvorbis-1.3.4/lib/synthesis.c"
Import "libvorbis-1.3.4/lib/vorbisfile.c"
Import "libvorbis-1.3.4/lib/window.c"
Import "libvorbis-1.3.4/lib/analysis.c"

Import "oggdecoder.c"

Extern

Function Decode_Ogg:Byte Ptr(..
	datasource:Object,..
	reado(buf@Ptr,size,nmemb,src:Object),..
	seeko(src:Object,offset:Long,whence),..
	closeo(src:Object),..
	tello(src:Object ),..
	samples Var,channels Var,freq Var)

Function Read_Ogg(ogg:Byte Ptr,buf:Byte Ptr,size)	'null buffer to close

End Extern
