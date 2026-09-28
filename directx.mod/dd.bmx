 
SuperStrict

Import Pub.Win32

Const DIRECTDRAW_VERSION:Int=$0700
Const _FACDD:Int=$876

Const FOURCC_DXT1:String="DXT1"	'TODO: convert to 32 bit hex
Const FOURCC_DXT2:String="DXT2"
Const FOURCC_DXT3:String="DXT3"
Const FOURCC_DXT4:String="DXT4"

Const DDENUM_ATTACHEDSECONDARYDEVICES:Int=1
Const DDENUM_DETACHEDSECONDARYDEVICES:Int=2
Const DDENUM_NONDISPLAYDEVICES:Int=4

Const REGSTR_KEY_DDHW_DESCRIPTION:String="Description"
Const REGSTR_KEY_DDHW_DRIVERNAME:String="DriverName"
Const REGSTR_PATH_DDHW:String="Hardware\\DirectDrawDrivers"

Const DDCREATE_HARDWAREONLY:Int=$11
Const DDCREATE_EMULATIONONLY:Int=$21

Const DDSD_CAPS:Int=$1
Const DDSD_HEIGHT:Int=$2
Const DDSD_WIDTH:Int=$4
Const DDSD_PITCH:Int=$8
Const DDSD_BACKBUFFERCOUNT:Int=$20
Const DDSD_ZBUFFERBITDEPTH:Int=$40
Const DDSD_ALPHABITDEPTH:Int=$80
Const DDSD_LPSURFACE:Int=$800
Const DDSD_PIXELFORMAT:Int=$1000
Const DDSD_CKDESTOVERLAY:Int=$2000
Const DDSD_CKDESTBLT:Int=$4000
Const DDSD_CKSRCOVERLAY:Int=$8000
Const DDSD_CKSRCBLT:Int=$10000
Const DDSD_MIPMAPCOUNT:Int=$20000
Const DDSD_REFRESHRATE:Int=$40000
Const DDSD_LINEARSIZE:Int=$80000
Const DDSD_TEXTURESTAGE:Int=$100000
Const DDSD_FVF:Int=$200000
Const DDSD_SRCVBHANDLE:Int=$400000
Const DDSD_ALL:Int=$7ff9ee

Const DDOSD_GUID:Int=$1
Const DDOSD_COMPRESSION_RATIO:Int=$2
Const DDOSD_SCAPS:Int=$4
Const DDOSD_OSCAPS:Int=$8
Const DDOSD_ALL:Int=$f

Const DDOSDCAPS_OPTCOMPRESSED:Int=$1
Const DDOSDCAPS_OPTREORDERED:Int=$2
Const DDOSDCAPS_MONOLITHICMIPMAP:Int=$4
Const DDOSDCAPS_VALIDSCAPS:Int=$30004800
Const DDOSDCAPS_VALIDOSCAPS:Int=$7

Const DDCOLOR_BRIGHTNESS:Int=$1
Const DDCOLOR_CONTRAST:Int=$2
Const DDCOLOR_HUE:Int=$4
Const DDCOLOR_SATURATION:Int=$8
Const DDCOLOR_SHARPNESS:Int=$10
Const DDCOLOR_GAMMA:Int=$20
Const DDCOLOR_COLORENABLE:Int=$40
Const DDSCAPS_RESERVED1:Int=$1
Const DDSCAPS_ALPHA:Int=$2
Const DDSCAPS_BACKBUFFER:Int=$4
Const DDSCAPS_COMPLEX:Int=$8
Const DDSCAPS_FLIP:Int=$10
Const DDSCAPS_FRONTBUFFER:Int=$20
Const DDSCAPS_OFFSCREENPLAIN:Int=$40
Const DDSCAPS_OVERLAY:Int=$80
Const DDSCAPS_PALETTE:Int=$100
Const DDSCAPS_PRIMARYSURFACE:Int=$200
Const DDSCAPS_RESERVED3:Int=$400
Const DDSCAPS_SYSTEMMEMORY:Int=$800
Const DDSCAPS_TEXTURE:Int=$1000
Const DDSCAPS_3DDEVICE:Int=$2000
Const DDSCAPS_VIDEOMEMORY:Int=$4000
Const DDSCAPS_VISIBLE:Int=$8000
Const DDSCAPS_WRITEONLY:Int=$10000
Const DDSCAPS_ZBUFFER:Int=$20000
Const DDSCAPS_OWNDC:Int=$40000
Const DDSCAPS_LIVEVIDEO:Int=$80000
Const DDSCAPS_HWCODEC:Int=$100000
Const DDSCAPS_MODEX:Int=$200000
Const DDSCAPS_MIPMAP:Int=$400000
Const DDSCAPS_RESERVED2:Int=$800000
Const DDSCAPS_ALLOCONLOAD:Int=$4000000
Const DDSCAPS_VIDEOPORT:Int=$8000000
Const DDSCAPS_LOCALVIDMEM:Int=$10000000
Const DDSCAPS_NONLOCALVIDMEM:Int=$20000000
Const DDSCAPS_STANDARDVGAMODE:Int=$40000000
Const DDSCAPS_OPTIMIZED:Int=$80000000

Const DDSCAPS2_HARDWAREDEINTERLACE:Int=$2
Const DDSCAPS2_HINTDYNAMIC:Int=$4
Const DDSCAPS2_HINTSTATIC:Int=$8
Const DDSCAPS2_TEXTUREMANAGE:Int=$10
Const DDSCAPS2_RESERVED1:Int=$20
Const DDSCAPS2_RESERVED2:Int=$40
Const DDSCAPS2_OPAQUE:Int=$80
Const DDSCAPS2_HINTANTIALIASING:Int=$100
Const DDSCAPS2_CUBEMAP:Int=$200
Const DDSCAPS2_CUBEMAP_POSITIVEX:Int=$400
Const DDSCAPS2_CUBEMAP_NEGATIVEX:Int=$800
Const DDSCAPS2_CUBEMAP_POSITIVEY:Int=$1000
Const DDSCAPS2_CUBEMAP_NEGATIVEY:Int=$2000
Const DDSCAPS2_CUBEMAP_POSITIVEZ:Int=$4000
Const DDSCAPS2_CUBEMAP_NEGATIVEZ:Int=$8000
Const DDSCAPS2_CUBEMAP_ALLFACES:Int=DDSCAPS2_CUBEMAP_POSITIVEX|DDSCAPS2_CUBEMAP_NEGATIVEX|DDSCAPS2_CUBEMAP_POSITIVEY|DDSCAPS2_CUBEMAP_NEGATIVEY|DDSCAPS2_CUBEMAP_POSITIVEZ|DDSCAPS2_CUBEMAP_NEGATIVEZ
Const DDSCAPS2_MIPMAPSUBLEVEL:Int=$10000
Const DDSCAPS2_D3DTEXTUREMANAGE:Int=$20000
Const DDSCAPS2_DONOTPERSIST:Int=$40000
Const DDSCAPS2_STEREOSURFACELEFT:Int=$80000

Const DDCAPS_3D:Int=$1
Const DDCAPS_ALIGNBOUNDARYDEST:Int=$2
Const DDCAPS_ALIGNSIZEDEST:Int=$4
Const DDCAPS_ALIGNBOUNDARYSRC:Int=$8
Const DDCAPS_ALIGNSIZESRC:Int=$10
Const DDCAPS_ALIGNSTRIDE:Int=$20
Const DDCAPS_BLT:Int=$40
Const DDCAPS_BLTQUEUE:Int=$80
Const DDCAPS_BLTFOURCC:Int=$100
Const DDCAPS_BLTSTRETCH:Int=$200
Const DDCAPS_GDI:Int=$400
Const DDCAPS_OVERLAY:Int=$800
Const DDCAPS_OVERLAYCANTCLIP:Int=$1000
Const DDCAPS_OVERLAYFOURCC:Int=$2000
Const DDCAPS_OVERLAYSTRETCH:Int=$4000
Const DDCAPS_PALETTE:Int=$8000
Const DDCAPS_PALETTEVSYNC:Int=$10000
Const DDCAPS_READSCANLINE:Int=$20000
Const DDCAPS_RESERVED1:Int=$40000
Const DDCAPS_VBI:Int=$80000
Const DDCAPS_ZBLTS:Int=$100000
Const DDCAPS_ZOVERLAYS:Int=$200000
Const DDCAPS_COLORKEY:Int=$400000
Const DDCAPS_ALPHA:Int=$800000
Const DDCAPS_COLORKEYHWASSIST:Int=$1000000
Const DDCAPS_NOHARDWARE:Int=$2000000
Const DDCAPS_BLTCOLORFILL:Int=$4000000
Const DDCAPS_BANKSWITCHED:Int=$8000000
Const DDCAPS_BLTDEPTHFILL:Int=$10000000
Const DDCAPS_CANCLIP:Int=$20000000
Const DDCAPS_CANCLIPSTRETCHED:Int=$40000000
Const DDCAPS_CANBLTSYSMEM:Int=$80000000

Const DDCAPS2_CERTIFIED:Int=$1
Const DDCAPS2_NO2DDURING3DSCENE:Int=$2
Const DDCAPS2_VIDEOPORT:Int=$4
Const DDCAPS2_AUTOFLIPOVERLAY:Int=$8
Const DDCAPS2_CANBOBINTERLEAVED:Int=$10
Const DDCAPS2_CANBOBNONINTERLEAVED:Int=$20
Const DDCAPS2_COLORCONTROLOVERLAY:Int=$40
Const DDCAPS2_COLORCONTROLPRIMARY:Int=$80
Const DDCAPS2_CANDROPZ16BIT:Int=$100
Const DDCAPS2_NONLOCALVIDMEM:Int=$200
Const DDCAPS2_NONLOCALVIDMEMCAPS:Int=$400
Const DDCAPS2_NOPAGELOCKREQUIRED:Int=$800
Const DDCAPS2_WIDESURFACES:Int=$1000
Const DDCAPS2_CANFLIPODDEVEN:Int=$2000
Const DDCAPS2_CANBOBHARDWARE:Int=$4000
Const DDCAPS2_COPYFOURCC:Int=$8000
Const DDCAPS2_PRIMARYGAMMA:Int=$20000
Const DDCAPS2_CANRENDERWINDOWED:Int=$80000
Const DDCAPS2_CANCALIBRATEGAMMA:Int=$100000
Const DDCAPS2_FLIPINTERVAL:Int=$200000
Const DDCAPS2_FLIPNOVSYNC:Int=$400000
Const DDCAPS2_CANMANAGETEXTURE:Int=$800000
Const DDCAPS2_TEXMANINNONLOCALVIDMEM:Int=$1000000
Const DDCAPS2_STEREO:Int=$2000000
Const DDCAPS2_SYSTONONLOCAL_AS_SYSTOLOCAL:Int=$4000000

Const DDFXALPHACAPS_BLTALPHAEDGEBLEND:Int=$1
Const DDFXALPHACAPS_BLTALPHAPIXELS:Int=$2
Const DDFXALPHACAPS_BLTALPHAPIXELSNEG:Int=$4
Const DDFXALPHACAPS_BLTALPHASURFACES:Int=$8
Const DDFXALPHACAPS_BLTALPHASURFACESNEG:Int=$10
Const DDFXALPHACAPS_OVERLAYALPHAEDGEBLEND:Int=$20
Const DDFXALPHACAPS_OVERLAYALPHAPIXELS:Int=$40
Const DDFXALPHACAPS_OVERLAYALPHAPIXELSNEG:Int=$80
Const DDFXALPHACAPS_OVERLAYALPHASURFACES:Int=$100
Const DDFXALPHACAPS_OVERLAYALPHASURFACESNEG:Int=$200

Const DDFXCAPS_BLTARITHSTRETCHY:Int=$20
Const DDFXCAPS_BLTARITHSTRETCHYN:Int=$10
Const DDFXCAPS_BLTMIRRORLEFTRIGHT:Int=$40
Const DDFXCAPS_BLTMIRRORUPDOWN:Int=$80
Const DDFXCAPS_BLTROTATION:Int=$100
Const DDFXCAPS_BLTROTATION90:Int=$200
Const DDFXCAPS_BLTSHRINKX:Int=$400
Const DDFXCAPS_BLTSHRINKXN:Int=$800
Const DDFXCAPS_BLTSHRINKY:Int=$1000
Const DDFXCAPS_BLTSHRINKYN:Int=$2000
Const DDFXCAPS_BLTSTRETCHX:Int=$4000
Const DDFXCAPS_BLTSTRETCHXN:Int=$8000
Const DDFXCAPS_BLTSTRETCHY:Int=$10000
Const DDFXCAPS_BLTSTRETCHYN:Int=$20000
Const DDFXCAPS_OVERLAYARITHSTRETCHY:Int=$40000
Const DDFXCAPS_OVERLAYARITHSTRETCHYN:Int=$8
Const DDFXCAPS_OVERLAYSHRINKX:Int=$80000
Const DDFXCAPS_OVERLAYSHRINKXN:Int=$100000
Const DDFXCAPS_OVERLAYSHRINKY:Int=$200000
Const DDFXCAPS_OVERLAYSHRINKYN:Int=$400000
Const DDFXCAPS_OVERLAYSTRETCHX:Int=$800000
Const DDFXCAPS_OVERLAYSTRETCHXN:Int=$1000000
Const DDFXCAPS_OVERLAYSTRETCHY:Int=$2000000
Const DDFXCAPS_OVERLAYSTRETCHYN:Int=$4000000
Const DDFXCAPS_OVERLAYMIRRORLEFTRIGHT:Int=$8000000
Const DDFXCAPS_OVERLAYMIRRORUPDOWN:Int=$10000000

Const DDFXCAPS_BLTALPHA:Int=$1
Const DDFXCAPS_BLTFILTER:Int=DDFXCAPS_BLTARITHSTRETCHY
Const DDFXCAPS_OVERLAYALPHA:Int=$4
Const DDFXCAPS_OVERLAYFILTER:Int=DDFXCAPS_OVERLAYARITHSTRETCHY
Const DDSVCAPS_RESERVED1:Int=$1
Const DDSVCAPS_RESERVED2:Int=$2
Const DDSVCAPS_RESERVED3:Int=$4
Const DDSVCAPS_RESERVED4:Int=$8
Const DDSVCAPS_STEREOSEQUENTIAL:Int=$10

Const DDPCAPS_4BIT:Int=$1
Const DDPCAPS_8BITENTRIES:Int=$2
Const DDPCAPS_8BIT:Int=$4
Const DDPCAPS_INITIALIZE:Int=$0
Const DDPCAPS_PRIMARYSURFACE:Int=$10
Const DDPCAPS_PRIMARYSURFACELEFT:Int=$20
Const DDPCAPS_ALLOW256:Int=$40
Const DDPCAPS_VSYNC:Int=$80
Const DDPCAPS_1BIT:Int=$100
Const DDPCAPS_2BIT:Int=$200
Const DDPCAPS_ALPHA:Int=$400

Const DDSPD_IUNKNOWNPOINTER:Int=$1
Const DDSPD_VOLATILE:Int=$2

Const DDBD_1:Int=$4000
Const DDBD_2:Int=$2000
Const DDBD_4:Int=$1000
Const DDBD_8:Int=$800
Const DDBD_16:Int=$400
Const DDBD_24:Int=$200
Const DDBD_32:Int=$100

Const DDCKEY_COLORSPACE:Int=$1
Const DDCKEY_DESTBLT:Int=$2
Const DDCKEY_DESTOVERLAY:Int=$4
Const DDCKEY_SRCBLT:Int=$8
Const DDCKEY_SRCOVERLAY:Int=$10

Const DDCKEYCAPS_DESTBLT:Int=$1
Const DDCKEYCAPS_DESTBLTCLRSPACE:Int=$2
Const DDCKEYCAPS_DESTBLTCLRSPACEYUV:Int=$4
Const DDCKEYCAPS_DESTBLTYUV:Int=$8
Const DDCKEYCAPS_DESTOVERLAY:Int=$10
Const DDCKEYCAPS_DESTOVERLAYCLRSPACE:Int=$20
Const DDCKEYCAPS_DESTOVERLAYCLRSPACEYUV:Int=$40
Const DDCKEYCAPS_DESTOVERLAYONEACTIVE:Int=$80
Const DDCKEYCAPS_DESTOVERLAYYUV:Int=$100
Const DDCKEYCAPS_SRCBLT:Int=$200
Const DDCKEYCAPS_SRCBLTCLRSPACE:Int=$400
Const DDCKEYCAPS_SRCBLTCLRSPACEYUV:Int=$800
Const DDCKEYCAPS_SRCBLTYUV:Int=$1000
Const DDCKEYCAPS_SRCOVERLAY:Int=$2000
Const DDCKEYCAPS_SRCOVERLAYCLRSPACE:Int=$4000
Const DDCKEYCAPS_SRCOVERLAYCLRSPACEYUV:Int=$8000
Const DDCKEYCAPS_SRCOVERLAYONEACTIVE:Int=$10000
Const DDCKEYCAPS_SRCOVERLAYYUV:Int=$20000
Const DDCKEYCAPS_NOCOSTOVERLAY:Int=$40000

Const DDPF_ALPHAPIXELS:Int=$1
Const DDPF_ALPHA:Int=$2
Const DDPF_FOURCC:Int=$4
Const DDPF_PALETTEINDEXED4:Int=$8
Const DDPF_PALETTEINDEXEDTO8:Int=$10
Const DDPF_PALETTEINDEXED8:Int=$20
Const DDPF_RGB:Int=$40
Const DDPF_COMPRESSED:Int=$80
Const DDPF_RGBTOYUV:Int=$100
Const DDPF_YUV:Int=$200
Const DDPF_ZBUFFER:Int=$400
Const DDPF_PALETTEINDEXED1:Int=$800
Const DDPF_PALETTEINDEXED2:Int=$1000
Const DDPF_ZPIXELS:Int=$2000
Const DDPF_STENCILBUFFER:Int=$4000
Const DDPF_ALPHAPREMULT:Int=$8000
Const DDPF_LUMINANCE:Int=$20000
Const DDPF_BUMPLUMINANCE:Int=$40000
Const DDPF_BUMPDUDV:Int=$80000


Const DDENUMSURFACES_ALL:Int=$1
Const DDENUMSURFACES_MATCH:Int=$2
Const DDENUMSURFACES_NOMATCH:Int=$4
Const DDENUMSURFACES_CANBECREATED:Int=$8
Const DDENUMSURFACES_DOESEXIST:Int=$10

Const DDSDM_STANDARDVGAMODE:Int=$1
Const DDEDM_REFRESHRATES:Int=$1
Const DDEDM_STANDARDVGAMODES:Int=$2

Const DDSCL_FULLSCREEN:Int=$1
Const DDSCL_ALLOWREBOOT:Int=$2
Const DDSCL_NOWINDOWCHANGES:Int=$4
Const DDSCL_NORMAL:Int=$8
Const DDSCL_EXCLUSIVE:Int=$10
Const DDSCL_ALLOWMODEX:Int=$40
Const DDSCL_SETFOCUSWINDOW:Int=$80
Const DDSCL_SETDEVICEWINDOW:Int=$100
Const DDSCL_CREATEDEVICEWINDOW:Int=$200
Const DDSCL_MULTITHREADED:Int=$400
Const DDSCL_FPUSETUP:Int=$800
Const DDSCL_FPUPRESERVE:Int=$1000

Const DDBLT_ALPHADEST:Int=$1
Const DDBLT_ALPHADESTCONSTOVERRIDE:Int=$2
Const DDBLT_ALPHADESTNEG:Int=$4
Const DDBLT_ALPHADESTSURFACEOVERRIDE:Int=$8
Const DDBLT_ALPHAEDGEBLEND:Int=$10
Const DDBLT_ALPHASRC:Int=$20
Const DDBLT_ALPHASRCCONSTOVERRIDE:Int=$40
Const DDBLT_ALPHASRCNEG:Int=$80
Const DDBLT_ALPHASRCSURFACEOVERRIDE:Int=$100
Const DDBLT_ASYNC:Int=$200
Const DDBLT_COLORFILL:Int=$400
Const DDBLT_DDFX:Int=$800
Const DDBLT_DDROPS:Int=$1000
Const DDBLT_KEYDEST:Int=$2000
Const DDBLT_KEYDESTOVERRIDE:Int=$4000
Const DDBLT_KEYSRC:Int=$8000
Const DDBLT_KEYSRCOVERRIDE:Int=$10000
Const DDBLT_ROP:Int=$20000
Const DDBLT_ROTATIONANGLE:Int=$40000
Const DDBLT_ZBUFFER:Int=$80000
Const DDBLT_ZBUFFERDESTCONSTOVERRIDE:Int=$100000
Const DDBLT_ZBUFFERDESTOVERRIDE:Int=$200000
Const DDBLT_ZBUFFERSRCCONSTOVERRIDE:Int=$400000
Const DDBLT_ZBUFFERSRCOVERRIDE:Int=$800000
Const DDBLT_WAIT:Int=$1000000
Const DDBLT_DEPTHFILL:Int=$2000000
Const DDBLT_DONOTWAIT:Int=$8000000

Const DDBLTFAST_NOCOLORKEY:Int=$0
Const DDBLTFAST_SRCCOLORKEY:Int=$1
Const DDBLTFAST_DESTCOLORKEY:Int=$2
Const DDBLTFAST_WAIT:Int=$10
Const DDBLTFAST_DONOTWAIT:Int=$20

Const DDFLIP_WAIT:Int=$1
Const DDFLIP_EVEN:Int=$2
Const DDFLIP_ODD:Int=$4
Const DDFLIP_NOVSYNC:Int=$8
Const DDFLIP_INTERVAL2:Int=$2000000
Const DDFLIP_INTERVAL3:Int=$3000000
Const DDFLIP_INTERVAL4:Int=$4000000
Const DDFLIP_STEREO:Int=$10
Const DDFLIP_DONOTWAIT:Int=$20

Const DDOVER_ALPHADEST:Int=$1
Const DDOVER_ALPHADESTCONSTOVERRIDE:Int=$2
Const DDOVER_ALPHADESTNEG:Int=$4
Const DDOVER_ALPHADESTSURFACEOVERRIDE:Int=$8
Const DDOVER_ALPHAEDGEBLEND:Int=$10
Const DDOVER_ALPHASRC:Int=$20
Const DDOVER_ALPHASRCCONSTOVERRIDE:Int=$40
Const DDOVER_ALPHASRCNEG:Int=$80
Const DDOVER_ALPHASRCSURFACEOVERRIDE:Int=$100
Const DDOVER_HIDE:Int=$200
Const DDOVER_KEYDEST:Int=$400
Const DDOVER_KEYDESTOVERRIDE:Int=$800
Const DDOVER_KEYSRC:Int=$1000
Const DDOVER_KEYSRCOVERRIDE:Int=$2000
Const DDOVER_SHOW:Int=$4000
Const DDOVER_ADDDIRTYRECT:Int=$8000
Const DDOVER_REFRESHDIRTYRECTS:Int=$10000
Const DDOVER_REFRESHALL:Int=$20000
Const DDOVER_DDFX:Int=$80000
Const DDOVER_AUTOFLIP:Int=$100000
Const DDOVER_BOB:Int=$200000
Const DDOVER_OVERRIDEBOBWEAVE:Int=$400000
Const DDOVER_INTERLEAVED:Int=$800000
Const DDOVER_BOBHARDWARE:Int=$1000000
Const DDOVER_ARGBSCALEFACTORS:Int=$2000000
Const DDOVER_DEGRADEARGBSCALING:Int=$4000000

Const DDLOCK_SURFACEMEMORYPTR:Int=$0
Const DDLOCK_WAIT:Int=$1
Const DDLOCK_EVENT:Int=$2
Const DDLOCK_READONLY:Int=$10
Const DDLOCK_WRITEONLY:Int=$20
Const DDLOCK_NOSYSLOCK:Int=$800
Const DDLOCK_NOOVERWRITE:Int=$1000
Const DDLOCK_DISCARDCONTENTS:Int=$2000
Const DDLOCK_OKTOSWAP:Int=$2000
Const DDLOCK_DONOTWAIT:Int=$4000

Const DDBLTFX_ARITHSTRETCHY:Int=$1
Const DDBLTFX_MIRRORLEFTRIGHT:Int=$2
Const DDBLTFX_MIRRORUPDOWN:Int=$4
Const DDBLTFX_NOTEARING:Int=$8
Const DDBLTFX_ROTATE180:Int=$10
Const DDBLTFX_ROTATE270:Int=$20
Const DDBLTFX_ROTATE90:Int=$40
Const DDBLTFX_ZBUFFERRANGE:Int=$80
Const DDBLTFX_ZBUFFERBASEDEST:Int=$100

Const DDOVERFX_ARITHSTRETCHY:Int=$1
Const DDOVERFX_MIRRORLEFTRIGHT:Int=$2
Const DDOVERFX_MIRRORUPDOWN:Int=$4

Const DDWAITVB_BLOCKBEGIN:Int=$1
Const DDWAITVB_BLOCKBEGINEVENT:Int=$2
Const DDWAITVB_BLOCKEND:Int=$4

Const DDGFS_CANFLIP:Int=$1
Const DDGFS_ISFLIPDONE:Int=$2

Const DDGBS_CANBLT:Int=$1
Const DDGBS_ISBLTDONE:Int=$2

Const DDENUMOVERLAYZ_BACKTOFRONT:Int=$0
Const DDENUMOVERLAYZ_FRONTTOBACK:Int=$1

Const DDOVERZ_SENDTOFRONT:Int=$1
Const DDOVERZ_SENDTOBACK:Int=$1
Const DDOVERZ_MOVEFORWARD:Int=$2
Const DDOVERZ_MOVEBACKWARD:Int=$3
Const DDOVERZ_INSERTINFRONTOF:Int=$4
Const DDOVERZ_INSERTINBACKOF:Int=$5

Const DDSGR_CALIBRATE:Int=1
Const DDSMT_ISTESTREQUIRED:Int=1

Const DDEM_MODEPASSED:Int=1
Const DDEM_MODEFAILED:Int=2

Const DD_OK:Int=0
Const DD_FALSE:Int=1

Const DDENUMRET_CANCEL:Int=0
Const DDENUMRET_OK:Int=1

' DIRECTDRAW ERRORS

Const DDERR:Int=$88760000

Const DDERR_ALREADYINITIALIZED:Int=DDERR+5
Const DDERR_CANNOTATTACHSURFACE:Int=DDERR+10
Const DDERR_CANNOTDETACHSURFACE:Int=DDERR+20
Const DDERR_CURRENTLYNOTAVAIL:Int=DDERR+40
Const DDERR_EXCEPTION:Int=DDERR+55

Const DDERR_GENERIC:Int=$80004005	'E_FAIL

Const DDERR_HEIGHTALIGN:Int=DDERR+90
Const DDERR_INCOMPATIBLEPRIMARY:Int=DDERR+95
Const DDERR_INVALIDCAPS:Int=DDERR+100
Const DDERR_INVALIDCLIPLIST:Int=DDERR+110
Const DDERR_INVALIDMODE:Int=DDERR+120
Const DDERR_INVALIDOBJECT:Int=DDERR+130
Const DDERR_INVALIDPARAMS:Int=$80070057		' E_INVALIDARG

Const DDERR_INVALIDPIXELFORMAT:Int=DDERR+145
Const DDERR_INVALIDRECT:Int=DDERR+150
Const DDERR_LOCKEDSURFACES:Int=DDERR+160
Const DDERR_NO3D:Int=DDERR+170
Const DDERR_NOALPHAHW:Int=DDERR+180
Const DDERR_NOSTEREOHARDWARE:Int=DDERR+181
Const DDERR_NOSURFACELEFT:Int=DDERR+182
Const DDERR_NOCLIPLIST:Int=DDERR+205
Const DDERR_NOCOLORCONVHW:Int=DDERR+210
Const DDERR_NOCOOPERATIVELEVELSET:Int=DDERR+212
Const DDERR_NOCOLORKEY:Int=DDERR+215
Const DDERR_NOCOLORKEYHW:Int=DDERR+220
Const DDERR_NODIRECTDRAWSUPPORT:Int=DDERR+222
Const DDERR_NOEXCLUSIVEMODE:Int=DDERR+225
Const DDERR_NOFLIPHW:Int=DDERR+230
Const DDERR_NOGDI:Int=DDERR+240
Const DDERR_NOMIRRORHW:Int=DDERR+250
Const DDERR_NOTFOUND:Int=DDERR+255
Const DDERR_NOOVERLAYHW:Int=DDERR+260
Const DDERR_OVERLAPPINGRECTS:Int=DDERR+270
Const DDERR_NORASTEROPHW:Int=DDERR+280
Const DDERR_NOROTATIONHW:Int=DDERR+290
Const DDERR_NOSTRETCHHW:Int=DDERR+310
Const DDERR_NOT4BITCOLOR:Int=DDERR+316
Const DDERR_NOT4BITCOLORINDEX:Int=DDERR+317
Const DDERR_NOT8BITCOLOR:Int=DDERR+320
Const DDERR_NOTEXTUREHW:Int=DDERR+330
Const DDERR_NOVSYNCHW:Int=DDERR+335
Const DDERR_NOZBUFFERHW:Int=DDERR+340
Const DDERR_NOZOVERLAYHW:Int=DDERR+350
Const DDERR_OUTOFCAPS:Int=DDERR+360
Const DDERR_OUTOFMEMORY:Int=$8007000E	' E_OUTOFMEMORY
Const DDERR_OUTOFVIDEOMEMORY:Int=DDERR+380
Const DDERR_OVERLAYCANTCLIP:Int=DDERR+382
Const DDERR_OVERLAYCOLORKEYONLYONEACTIVE:Int=DDERR+384
Const DDERR_PALETTEBUSY:Int=DDERR+387
Const DDERR_COLORKEYNOTSET:Int=DDERR+400
Const DDERR_SURFACEALREADYATTACHED:Int=DDERR+410
Const DDERR_SURFACEALREADYDEPENDENT:Int=DDERR+420
Const DDERR_SURFACEBUSY:Int=DDERR+430
Const DDERR_CANTLOCKSURFACE:Int=DDERR+435
Const DDERR_SURFACEISOBSCURED:Int=DDERR+440
Const DDERR_SURFACELOST:Int=DDERR+450
Const DDERR_SURFACENOTATTACHED:Int=DDERR+460
Const DDERR_TOOBIGHEIGHT:Int=DDERR+470
Const DDERR_TOOBIGSIZE:Int=DDERR+480
Const DDERR_TOOBIGWIDTH:Int=DDERR+490
Const DDERR_UNSUPPORTED:Int=$80000001	' E_NOTIMPL
Const DDERR_UNSUPPORTEDFORMAT:Int=DDERR+510
Const DDERR_UNSUPPORTEDMASK:Int=DDERR+520
Const DDERR_INVALIDSTREAM:Int=DDERR+521
Const DDERR_VERTICALBLANKINPROGRESS:Int=DDERR+537
Const DDERR_WASSTILLDRAWING:Int=DDERR+540
Const DDERR_DDSCAPSCOMPLEXREQUIRED:Int=DDERR+542
Const DDERR_XALIGN:Int=DDERR+560
Const DDERR_INVALIDDIRECTDRAWGUID:Int=DDERR+561
Const DDERR_DIRECTDRAWALREADYCREATED:Int=DDERR+562
Const DDERR_NODIRECTDRAWHW:Int=DDERR+563
Const DDERR_PRIMARYSURFACEALREADYEXISTS:Int=DDERR+564
Const DDERR_NOEMULATION:Int=DDERR+565
Const DDERR_REGIONTOOSMALL:Int=DDERR+566
Const DDERR_CLIPPERISUSINGHWND:Int=DDERR+567
Const DDERR_NOCLIPPERATTACHED:Int=DDERR+568
Const DDERR_NOHWND:Int=DDERR+569
Const DDERR_HWNDSUBCLASSED:Int=DDERR+570
Const DDERR_HWNDALREADYSET:Int=DDERR+571
Const DDERR_NOPALETTEATTACHED:Int=DDERR+572
Const DDERR_NOPALETTEHW:Int=DDERR+573
Const DDERR_BLTFASTCANTCLIP:Int=DDERR+574
Const DDERR_NOBLTHW:Int=DDERR+575
Const DDERR_NODDROPSHW:Int=DDERR+576
Const DDERR_OVERLAYNOTVISIBLE:Int=DDERR+577
Const DDERR_NOOVERLAYDEST:Int=DDERR+578
Const DDERR_INVALIDPOSITION:Int=DDERR+579
Const DDERR_NOTAOVERLAYSURFACE:Int=DDERR+580
Const DDERR_EXCLUSIVEMODEALREADYSET:Int=DDERR+581
Const DDERR_NOTFLIPPABLE:Int=DDERR+582
Const DDERR_CANTDUPLICATE:Int=DDERR+583
Const DDERR_NOTLOCKED:Int=DDERR+584
Const DDERR_CANTCREATEDC:Int=DDERR+585
Const DDERR_NODC:Int=DDERR+586
Const DDERR_WRONGMODE:Int=DDERR+587
Const DDERR_IMPLICITLYCREATED:Int=DDERR+588
Const DDERR_NOTPALETTIZED:Int=DDERR+589
Const DDERR_UNSUPPORTEDMODE:Int=DDERR+590
Const DDERR_NOMIPMAPHW:Int=DDERR+591
Const DDERR_INVALIDSURFACETYPE:Int=DDERR+592
Const DDERR_NOOPTIMIZEHW:Int=DDERR+600
Const DDERR_NOTLOADED:Int=DDERR+601
Const DDERR_NOFOCUSWINDOW:Int=DDERR+602
Const DDERR_NOTONMIPMAPSUBLEVEL:Int=DDERR+603
Const DDERR_DCALREADYCREATED:Int=DDERR+620
Const DDERR_NONONLOCALVIDMEM:Int=DDERR+630
Const DDERR_CANTPAGELOCK:Int=DDERR+640
Const DDERR_CANTPAGEUNLOCK:Int=DDERR+660
Const DDERR_NOTPAGELOCKED:Int=DDERR+680
Const DDERR_MOREDATA:Int=DDERR+690
Const DDERR_EXPIRED:Int=DDERR+691
Const DDERR_TESTFINISHED:Int=DDERR+692
Const DDERR_NEWMODE:Int=DDERR+693
Const DDERR_D3DNOTINITIALIZED:Int=DDERR+694
Const DDERR_VIDEONOTACTIVE:Int=DDERR+695
Const DDERR_NOMONITORINFORMATION:Int=DDERR+696
Const DDERR_NODRIVERSUPPORT:Int=DDERR+697
Const DDERR_DEVICEDOESNTOWNSURFACE:Int=DDERR+699
Const DDERR_NOTINITIALIZED:Int=$800401F0	' CO_E_NOTINITIALIZED

Rem

DEFINE_GUID( CLSID_DirectDraw,=$D7B70EE0,0x4340,0x11CF,0xB0,0x63,0x00,0x20,0xAF,0xC2,0xCD,0x35 );
DEFINE_GUID( CLSID_DirectDraw7,=$3c305196,0x50db,0x11d3,0x9c,0xfe,0x00,0xc0,0x4f,0xd9,0x30,0xc5 );
DEFINE_GUID( CLSID_DirectDrawClipper,=$593817A0,0x7DB3,0x11CF,0xA2,0xDE,0x00,0xAA,0x00,0xb9,0x33,0x56 );
DEFINE_GUID( IID_IDirectDraw,=$6C14DB80,0xA733,0x11CE,0xA5,0x21,0x00,0x20,0xAF,0x0B,0xE5,0x60 );
DEFINE_GUID( IID_IDirectDraw2,=$B3A6F3E0,0x2B43,0x11CF,0xA2,0xDE,0x00,0xAA,0x00,0xB9,0x33,0x56 );
DEFINE_GUID( IID_IDirectDraw4,=$9c59509a,0x39bd,0x11d1,0x8c,0x4a,0x00,0xc0,0x4f,0xd9,0x30,0xc5 );
DEFINE_GUID( IID_IDirectDraw7,=$15e65ec0,0x3b9c,0x11d2,0xb9,0x2f,0x00,0x60,0x97,0x97,0xea,0x5b );
DEFINE_GUID( IID_IDirectDrawSurface,=$6C14DB81,0xA733,0x11CE,0xA5,0x21,0x00,0x20,0xAF,0x0B,0xE5,0x60 );
DEFINE_GUID( IID_IDirectDrawSurface2,=$57805885,0x6eec,0x11cf,0x94,0x41,0xa8,0x23,0x03,0xc1,0x0e,0x27 );
DEFINE_GUID( IID_IDirectDrawSurface3,=$DA044E00,0x69B2,0x11D0,0xA1,0xD5,0x00,0xAA,0x00,0xB8,0xDF,0xBB );
DEFINE_GUID( IID_IDirectDrawSurface4,=$B2B8630,0xAD35,0x11D0,0x8E,0xA6,0x00,0x60,0x97,0x97,0xEA,0x5B );
DEFINE_GUID( IID_IDirectDrawSurface7,=$6675a80,0x3b9b,0x11d2,0xb9,0x2f,0x00,0x60,0x97,0x97,0xea,0x5b );

DEFINE_GUID( IID_IDirectDrawPalette,=$6C14DB84,0xA733,0x11CE,0xA5,0x21,0x00,0x20,0xAF,0x0B,0xE5,0x60 );
DEFINE_GUID( IID_IDirectDrawClipper,=$6C14DB85,0xA733,0x11CE,0xA5,0x21,0x00,0x20,0xAF,0x0B,0xE5,0x60 );
DEFINE_GUID( IID_IDirectDrawColorControl,=$4B9F0EE0,0x0D7E,0x11D0,0x9B,0x06,0x00,0xA0,0xC9,0x03,0xA3,0xB8 );
DEFINE_GUID( IID_IDirectDrawGammaControl,=$69C11C3E,0xB46B,0x11D1,0xAD,0x7A,0x00,0xC0,0x4F,0xC2,0x9B,0x4E );

typedef BOOL (FAR PASCAL * LPDDENUMCALLBACKA)(GUID FAR *, LPSTR, LPSTR, LPVOID);
typedef BOOL (FAR PASCAL * LPDDENUMCALLBACKW)(GUID FAR *, LPWSTR, LPWSTR, LPVOID);
Extern HRESULT WINAPI DirectDrawEnumerateW( LPDDENUMCALLBACKW lpCallback, LPVOID lpContext );
Extern HRESULT WINAPI DirectDrawEnumerateA( LPDDENUMCALLBACKA lpCallback, LPVOID lpContext );

EndRem

Type DDSURFACEDESC
	Field dwSize:Int' size of the DDSURFACEDESC structure
	Field dwFlags:Int' determines what fields are valid
	Field dwHeight:Int' height of surface To be created
	Field dwWidth:Int' width of Input surface
' union	Field dwLinearSize' Formless late-allocated optimized surface size
	Field lPitch:Int' distance To start of Next line (Return value only)
	Field dwBackBufferCount:Int' number of back buffers requested
'union Field dwMipMapCount' number of mip-map levels requested
'union Field dwZBufferBitDepth' depth of Z buffer requested
	Field dwRefreshRate:Int' refresh rate (used when display mode is described)
	Field dwAlphaBitDepth:Int' depth of alpha buffer requested
	Field dwReserved:Int' reserved
	Field lpSurface:Byte Ptr' pointer To the associated surface memory
' DDCOLORKEYs
	Field ddckCKDestOverlay:Long' color key For destination overlay use
	Field ddckCKDestBlt:Long' color key For destination blt use
	Field ddckCKSrcOverlay:Long' color key For source overlay use
	Field ddckCKSrcBlt:Long' color key For source blt use
' DDPIXELFORMAT
	Field ddpf_dwSize:Int' size of structure
	Field ddpf_dwFlags:Int' pixel format flags
	Field ddpf_dwFourCC:Int' (FOURCC code)
	Field ddpf_BitCount:Int
	Field ddpf_BitMask_0:Int
	Field ddpf_BitMask_1:Int
	Field ddpf_BitMask_2:Int
	Field ddpf_BitMask_3:Int
' DDSCAPS
	Field ddsCaps:Int' direct draw surface capabilities
End Type

Type DDSURFACEDESC2
	Field dwSize:Int' size of the DDSURFACEDESC structure
	Field dwFlags:Int' determines what fields are valid
	Field dwHeight:Int' height of surface To be created
	Field dwWidth:Int' width of Input surface
' union dwLinearSize
	Field lPitch:Int' distance To start of Next line (Return value only)
	Field dwBackBufferCount:Int' number of back buffers requested
' union dwRefreshRate,dwSrcVBHandle
	Field dwMipMapCount:Int' number of mip-map levels requestde
	Field dwAlphaBitDepth:Int' depth of alpha buffer requested
	Field dwReserved:Int' reserved
	Field lpSurface:Byte Ptr' pointer To the associated surface memory
' union dwEmptyFaceColor
' DDCOLORKEYs
	Field dddckCKDestOverlay:Long' color key For destination overlay use
	Field ddckCKDestBlt:Long' color key For destination blt use
	Field ddckCKSrcOverlay:Long' color key For source overlay use
	Field ddckCKSrcBlt:Long' color key For source blt use
' union dwFVF
' DDPFPIXELFORMAT
	Field ddpf_dwSize:Int' size of structure
	Field ddpf_dwFlags:Int' pixel format flags
	Field ddpf_dwFourCC:Int' (FOURCC code)
	Field ddpf_BitCount:Int
	Field ddpf_BitMask_0:Int
	Field ddpf_BitMask_1:Int
	Field ddpf_BitMask_2:Int
	Field ddpf_BitMask_3:Int
' DDSCAPS2
	Field ddsCaps:Int' capabilities of surface wanted
	Field ddsCaps2:Int
	Field ddsCaps3:Int
	Field ddsCaps4:Int
	Field dwTextureStage:Int' stage in multitexture cascade
End Type

Type DDOPTSURFACEDESC
	Field dwSize:Int' size of the DDOPTSURFACEDESC structure
	Field dwFlags:Int' determines what fields are valid
' DDSCAPS2
	Field ddSCaps_0:Int' Common caps like: Memory Type
	Field ddsCaps_1:Int
	Field ddsCaps_2:Int
	Field ddsCaps_3:Int
	Field ddOSCaps:Int' Common caps like: Memory Type
' GUID
	Field guid_0:Int' Compression technique GUID
	Field guid_1:Int
	Field guid_2:Int
	Field guid_3:Int
	Field dwCompressionRatio:Int' Compression ratio
End Type

Type DDCOLORCONTROL
	Field dwSize:Int
	Field dwFlags:Int
	Field lBrightness:Int
	Field lContrast:Int
	Field lHue:Int
	Field lSaturation:Int
	Field lSharpness:Int
	Field lGamma:Int
	Field lColorEnable:Int
	Field dwReserved1:Int
End Type

Type DDARGB
	Field	blue:Byte,green:Byte,red:Byte,alpha:Byte
End Type

Type DDRGBA
	Field	red:Byte,green:Byte,blue:Byte,alpha:Byte
End Type

Type DDCOLORKEY
	Field	dwColorSpaceLowValue:Int	' low boundary of color space that is to be treated as Color Key, inclusive
	Field	dwColorSpaceHighValue:Int	' high boundary of color space that is to be treated as Color Key, inclusive
End Type

Type DDBLTFX
	Field dwSize:Int' size of structure
	Field dwDDFX:Int' FX operations
	Field dwROP:Int' Win32 raster operations
	Field dwDDROP:Int' Raster operations New For DirectDraw
	Field dwRotationAngle:Int' Rotation angle For blt
	Field dwZBufferOpCode:Int' ZBuffer compares
	Field dwZBufferLow:Int' Low limit of Z buffer
	Field dwZBufferHigh:Int' High limit of Z buffer
	Field dwZBufferBaseDest:Int' Destination base value
	Field dwZDestConstBitDepth:Int' Bit depth used To specify Z constant For destination
' union LPDIRECTDRAWSURFACE lpDDSZBufferDest
	Field dwZDestConst:Int' Constant To use as Z buffer For dest
	Field dwZSrcConstBitDepth:Int' Bit depth used To specify Z constant For source
' union LPDIRECTDRAWSURFACE lpDDSZBufferSrc
	Field dwZSrcConst:Int' Constant To use as Z buffer For src
	Field dwAlphaEdgeBlendBitDepth:Int' Bit depth used To specify constant For alpha edge blend
	Field dwAlphaEdgeBlend:Int' Alpha For edge blending
	Field dwReserved:Int
	Field dwAlphaDestConstBitDepth:Int' Bit depth used To specify alpha constant For destination
' union LPDIRECTDRAWSURFACE lpDDSAlphaDest
	Field dwAlphaDestConst:Int' Constant To use as Alpha Channel
	Field dwAlphaSrcConstBitDepth:Int' Bit depth used To specify alpha constant For source
' union LPDIRECTDRAWSURFACE lpDDSAlphaSrc
	Field dwAlphaSrcConst:Int' Constant To use as Alpha Channel
' union dwFillDepth,dwFillPixel,LPDIRECTDRAWSURFACE lpDDSPattern
	Field dwFillColor:Int' color in RGB Or Palettized
' DDCOLORKEYs
	Field ddckDestColorkeyLo:Int,ddckDestColorkeyHi:Int	' DestColorkey override
	Field ddckSrcColorkeyLo:Int,ddckSrcColorkeyHi:Int	' SrcColorkey override
End Type

Type DDSCAPS
	Field dwCaps:Int	' capabilities of surface wanted
End Type

Type DDOSCAPS
	Field dwCaps:Int	' capabilities of surface wanted
End Type

Type DDSCAPSEX
	Field dwCaps2:Int
	Field dwCaps3:Int
	Field dwCaps4:Int
End Type

Type DDSCAPS2
	Field dwCaps:Int' capabilities of surface wanted
	Field dwCaps2:Int
	Field dwCaps3:Int
	Field dwCaps4:Int
End Type

Const DD_ROP_SPACE:Int=(256/32) ' space required To store ROP array

Type DDCAPS_DX1
	Field dwSize:Int' size of the DDDRIVERCAPS structure
	Field dwCaps:Int' driver specific capabilities
	Field dwCaps2:Int' more driver specific capabilites
	Field dwCKeyCaps:Int' color key capabilities of the surface
	Field dwFXCaps:Int' driver specific stretching And effects capabilites
	Field dwFXAlphaCaps:Int' alpha driver specific capabilities
	Field dwPalCaps:Int' palette capabilities
	Field dwSVCaps:Int' stereo vision capabilities
	Field dwAlphaBltConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaBltPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaBltSurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlayConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaOverlayPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlaySurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwZBufferBitDepths:Int' DDBD_8,16,24,32
	Field dwVidMemTotal:Int' total amount of video memory
	Field dwVidMemFree:Int' amount of free video memory
	Field dwMaxVisibleOverlays:Int' maximum number of visible overlays
	Field dwCurrVisibleOverlays:Int' current number of visible overlays
	Field dwNumFourCCCodes:Int' number of four cc codes
	Field dwAlignBoundarySrc:Int' source rectangle alignment
	Field dwAlignSizeSrc:Int' source rectangle Byte size
	Field dwAlignBoundaryDest:Int' dest rectangle alignment
	Field dwAlignSizeDest:Int' dest rectangle Byte size
	Field dwAlignStrideAlign:Int' stride alignment
	Field dwRops_0:Int' ROPS supported
	Field dwRops_1:Int
	Field dwRops_2:Int
	Field dwRops_3:Int
	Field dwRops_4:Int
	Field dwRops_5:Int
	Field dwRops_6:Int
	Field dwRops_7:Int
' DDSCAPS
	Field ddsCaps:Int' DDSCAPS structure has all the general capabilities
	Field dwMinOverlayStretch:Int' minimum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxOverlayStretch:Int' maximum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinLiveVideoStretch:Int' OBSOLETE! This Field remains For compatability reasons only
	Field dwMaxLiveVideoStretch:Int' OBSOLETE! This Field remains For compatability reasons only
	Field dwMinHwCodecStretch:Int' OBSOLETE! This Field remains For compatability reasons only
	Field dwMaxHwCodecStretch:Int' OBSOLETE! This Field remains For compatability reasons only
	Field dwReserved1:Int' reserved
	Field dwReserved2:Int' reserved
	Field dwReserved3:Int' reserved
End Type

Type DDCAPS_DX3
	Field dwSize:Int' size of the DDDRIVERCAPS structure
	Field dwCaps:Int' driver specific capabilities
	Field dwCaps2:Int' more driver specific capabilites
	Field dwCKeyCaps:Int' color key capabilities of the surface
	Field dwFXCaps:Int' driver specific stretching And effects capabilites
	Field dwFXAlphaCaps:Int' alpha driver specific capabilities
	Field dwPalCaps:Int' palette capabilities
	Field dwSVCaps:Int' stereo vision capabilities
	Field dwAlphaBltConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaBltPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaBltSurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlayConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaOverlayPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlaySurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwZBufferBitDepths:Int' DDBD_8,16,24,32
	Field dwVidMemTotal:Int' total amount of video memory
	Field dwVidMemFree:Int' amount of free video memory
	Field dwMaxVisibleOverlays:Int' maximum number of visible overlays
	Field dwCurrVisibleOverlays:Int' current number of visible overlays
	Field dwNumFourCCCodes:Int' number of four cc codes
	Field dwAlignBoundarySrc:Int' source rectangle alignment
	Field dwAlignSizeSrc:Int' source rectangle Byte size
	Field dwAlignBoundaryDest:Int' dest rectangle alignment
	Field dwAlignSizeDest:Int' dest rectangle Byte size
	Field dwAlignStrideAlign:Int' stride alignment
	Field dwRops_0:Int' ROPS supported
	Field dwRops_1:Int
	Field dwRops_2:Int
	Field dwRops_3:Int
	Field dwRops_4:Int
	Field dwRops_5:Int
	Field dwRops_6:Int
	Field dwRops_7:Int
' DDSCAPS
	Field ddsCaps:Int' DDSCAPS structure has all the general capabilities
	Field dwMinOverlayStretch:Int' minimum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxOverlayStretch:Int' maximum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinLiveVideoStretch:Int' minimum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxLiveVideoStretch:Int' maximum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinHwCodecStretch:Int' minimum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxHwCodecStretch:Int' maximum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwReserved1:Int' reserved
	Field dwReserved2:Int' reserved
	Field dwReserved3:Int' reserved
	Field dwSVBCaps:Int' driver specific capabilities For System->Vmem blts
	Field dwSVBCKeyCaps:Int' driver color key capabilities For System->Vmem blts
	Field dwSVBFXCaps:Int' driver FX capabilities For System->Vmem blts
	Field dwSVBRops_0:Int ' ROPS supported For System->Vmem blts
	Field dwSVBRops_1:Int
	Field dwSVBRops_2:Int
	Field dwSVBRops_3:Int
	Field dwSVBRops_4:Int
	Field dwSVBRops_5:Int
	Field dwSVBRops_6:Int
	Field dwSVBRops_7:Int
	Field dwVSBCaps:Int' driver specific capabilities For Vmem->System blts
	Field dwVSBCKeyCaps:Int' driver color key capabilities For Vmem->System blts
	Field dwVSBFXCaps:Int' driver FX capabilities For Vmem->System blts
	Field dwVSBRops_0:Int' ROPS supported For Vmem->System blts
	Field dwVSBRops_1:Int
	Field dwVSBRops_2:Int
	Field dwVSBRops_3:Int
	Field dwVSBRops_4:Int
	Field dwVSBRops_5:Int
	Field dwVSBRops_6:Int
	Field dwVSBRops_7:Int
	Field dwSSBCaps:Int' driver specific capabilities For System->System blts
	Field dwSSBCKeyCaps:Int' driver color key capabilities For System->System blts
	Field dwSSBFXCaps:Int' driver FX capabilities For System->System blts
	Field dwSSBRops_0:Int' ROPS supported For System->System blts
	Field dwSSBRops_1:Int
	Field dwSSBRops_2:Int
	Field dwSSBRops_3:Int
	Field dwSSBRops_4:Int
	Field dwSSBRops_5:Int
	Field dwSSBRops_6:Int
	Field dwSSBRops_7:Int
	Field dwReserved4:Int' reserved
	Field dwReserved5:Int' reserved
	Field dwReserved6:Int' reserved
End Type

Type DDCAPS_DX5
	Field dwSize:Int' size of the DDDRIVERCAPS structure
	Field dwCaps:Int' driver specific capabilities
	Field dwCaps2:Int' more driver specific capabilites
	Field dwCKeyCaps:Int' color key capabilities of the surface
	Field dwFXCaps:Int' driver specific stretching And effects capabilites
	Field dwFXAlphaCaps:Int' alpha driver specific capabilities
	Field dwPalCaps:Int' palette capabilities
	Field dwSVCaps:Int' stereo vision capabilities
	Field dwAlphaBltConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaBltPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaBltSurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlayConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaOverlayPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlaySurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwZBufferBitDepths:Int' DDBD_8,16,24,32
	Field dwVidMemTotal:Int' total amount of video memory
	Field dwVidMemFree:Int' amount of free video memory
	Field dwMaxVisibleOverlays:Int' maximum number of visible overlays
	Field dwCurrVisibleOverlays:Int' current number of visible overlays
	Field dwNumFourCCCodes:Int' number of four cc codes
	Field dwAlignBoundarySrc:Int' source rectangle alignment
	Field dwAlignSizeSrc:Int' source rectangle Byte size
	Field dwAlignBoundaryDest:Int' dest rectangle alignment
	Field dwAlignSizeDest:Int' dest rectangle Byte size
	Field dwAlignStrideAlign:Int' stride alignment
	Field dwRops_0:Int' ROPS supported
	Field dwRops_1:Int
	Field dwRops_2:Int
	Field dwRops_3:Int
	Field dwRops_4:Int
	Field dwRops_5:Int
	Field dwRops_6:Int
	Field dwRops_7:Int
' DDSCAPS
	Field ddsCaps:Int' DDSCAPS structure has all the general capabilities
	Field dwMinOverlayStretch:Int' minimum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxOverlayStretch:Int' maximum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinLiveVideoStretch:Int' minimum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxLiveVideoStretch:Int' maximum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinHwCodecStretch:Int' minimum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxHwCodecStretch:Int' maximum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwReserved1:Int' reserved
	Field dwReserved2:Int' reserved
	Field dwReserved3:Int' reserved
	Field dwSVBCaps:Int' driver specific capabilities For System->Vmem blts
	Field dwSVBCKeyCaps:Int' driver color key capabilities For System->Vmem blts
	Field dwSVBFXCaps:Int' driver FX capabilities For System->Vmem blts
	Field dwSVBRops_0:Int' ROPS supported For System->Vmem blts
	Field dwSVBRops_1:Int
	Field dwSVBRops_2:Int
	Field dwSVBRops_3:Int
	Field dwSVBRops_4:Int
	Field dwSVBRops_5:Int
	Field dwSVBRops_6:Int
	Field dwSVBRops_7:Int
	Field dwVSBCaps:Int' driver specific capabilities For Vmem->System blts
	Field dwVSBCKeyCaps:Int' driver color key capabilities For Vmem->System blts
	Field dwVSBFXCaps:Int' driver FX capabilities For Vmem->System blts
	Field dwVSBRops_0:Int' ROPS supported For Vmem->System blts
	Field dwVSBRops_1:Int
	Field dwVSBRops_2:Int
	Field dwVSBRops_3:Int
	Field dwVSBRops_4:Int
	Field dwVSBRops_5:Int
	Field dwVSBRops_6:Int
	Field dwVSBRops_7:Int
	Field dwSSBCaps:Int' driver specific capabilities For System->System blts
	Field dwSSBCKeyCaps:Int' driver color key capabilities For System->System blts
	Field dwSSBFXCaps:Int' driver FX capabilities For System->System blts
	Field dwSSBRops_0:Int' ROPS supported For System->System blts
	Field dwSSBRops_1:Int
	Field dwSSBRops_2:Int
	Field dwSSBRops_3:Int
	Field dwSSBRops_4:Int
	Field dwSSBRops_5:Int
	Field dwSSBRops_6:Int
	Field dwSSBRops_7:Int
' Members added For DX5:
	Field dwMaxVideoPorts:Int' maximum number of usable video ports
	Field dwCurrVideoPorts:Int' current number of video ports used
	Field dwSVBCaps2:Int' more driver specific capabilities For System->Vmem blts
	Field dwNLVBCaps:Int' driver specific capabilities For non-Local->Local vidmem blts
	Field dwNLVBCaps2:Int' more driver specific capabilities non-Local->Local vidmem blts
	Field dwNLVBCKeyCaps:Int' driver color key capabilities For non-Local->Local vidmem blts
	Field dwNLVBFXCaps:Int' driver FX capabilities For non-Local->Local blts
	Field dwNLVBRops_0:Int' ROPS supported For non-Local->Local blts
	Field dwNLVBRops_1:Int
	Field dwNLVBRops_2:Int
	Field dwNLVBRops_3:Int
	Field dwNLVBRops_4:Int
	Field dwNLVBRops_5:Int
	Field dwNLVBRops_6:Int
	Field dwNLVBRops_7:Int
End Type

Type DDCAPS_DX6
	Field dwSize:Int' size of the DDDRIVERCAPS structure
	Field dwCaps:Int' driver specific capabilities
	Field dwCaps2:Int' more driver specific capabilites
	Field dwCKeyCaps:Int' color key capabilities of the surface
	Field dwFXCaps:Int' driver specific stretching And effects capabilites
	Field dwFXAlphaCaps:Int' alpha caps
	Field dwPalCaps:Int' palette capabilities
	Field dwSVCaps:Int' stereo vision capabilities
	Field dwAlphaBltConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaBltPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaBltSurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlayConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaOverlayPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlaySurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwZBufferBitDepths:Int' DDBD_8,16,24,32
	Field dwVidMemTotal:Int' total amount of video memory
	Field dwVidMemFree:Int' amount of free video memory
	Field dwMaxVisibleOverlays:Int' maximum number of visible overlays
	Field dwCurrVisibleOverlays:Int' current number of visible overlays
	Field dwNumFourCCCodes:Int' number of four cc codes
	Field dwAlignBoundarySrc:Int' source rectangle alignment
	Field dwAlignSizeSrc:Int' source rectangle Byte size
	Field dwAlignBoundaryDest:Int' dest rectangle alignment
	Field dwAlignSizeDest:Int' dest rectangle Byte size
	Field dwAlignStrideAlign:Int' stride alignment
	Field dwRops_0:Int' ROPS supported
	Field dwRops_1:Int
	Field dwRops_2:Int
	Field dwRops_3:Int
	Field dwRops_4:Int
	Field dwRops_5:Int
	Field dwRops_6:Int
	Field dwRops_7:Int
' DDSCAPS
	Field ddsOldCaps:Int' Was DDSCAPS ddsCaps. ddsCaps is of Type DDSCAPS2 For DX6
	Field dwMinOverlayStretch:Int' minimum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxOverlayStretch:Int' maximum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinLiveVideoStretch:Int' minimum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxLiveVideoStretch:Int' maximum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinHwCodecStretch:Int' minimum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxHwCodecStretch:Int' maximum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwReserved1:Int' reserved
	Field dwReserved2:Int' reserved
	Field dwReserved3:Int' reserved
	Field dwSVBCaps:Int' driver specific capabilities For System->Vmem blts
	Field dwSVBCKeyCaps:Int' driver color key capabilities For System->Vmem blts
	Field dwSVBFXCaps:Int' driver FX capabilities For System->Vmem blts
	Field dwSVBRops_0:Int' ROPS supported for System->Vmem blts
	Field dwSVBRops_1:Int
	Field dwSVBRops_2:Int
	Field dwSVBRops_3:Int
	Field dwSVBRops_4:Int
	Field dwSVBRops_5:Int
	Field dwSVBRops_6:Int
	Field dwSVBRops_7:Int
	Field dwVSBCaps:Int' driver specific capabilities For Vmem->System blts
	Field dwVSBCKeyCaps:Int' driver color key capabilities For Vmem->System blts
	Field dwVSBFXCaps:Int' driver FX capabilities For Vmem->System blts
	Field dwVSBRops_0:Int' ROPS supported for Vmem->System blts
	Field dwVSBRops_1:Int
	Field dwVSBRops_2:Int
	Field dwVSBRops_3:Int
	Field dwVSBRops_4:Int
	Field dwVSBRops_5:Int
	Field dwVSBRops_6:Int
	Field dwVSBRops_7:Int
	Field dwSSBCaps:Int' driver specific capabilities For System->System blts
	Field dwSSBCKeyCaps:Int' driver color key capabilities For System->System blts
	Field dwSSBFXCaps:Int' driver FX capabilities For System->System blts
	Field dwSSBRops_0:Int' ROPS supported for System->System blts
	Field dwSSBRops_1:Int
	Field dwSSBRops_2:Int
	Field dwSSBRops_3:Int
	Field dwSSBRops_4:Int
	Field dwSSBRops_5:Int
	Field dwSSBRops_6:Int
	Field dwSSBRops_7:Int
	Field dwMaxVideoPorts:Int' maximum number of usable video ports
	Field dwCurrVideoPorts:Int' current number of video ports used
	Field dwSVBCaps2:Int' more driver specific capabilities For System->Vmem blts
	Field dwNLVBCaps:Int' driver specific capabilities For non-Local->Local vidmem blts
	Field dwNLVBCaps2:Int' more driver specific capabilities non-Local->Local vidmem blts
	Field dwNLVBCKeyCaps:Int' driver color key capabilities For non-Local->Local vidmem blts
	Field dwNLVBFXCaps:Int' driver FX capabilities For non-Local->Local blts
	Field dwNLVBRops_0:Int' ROPS supported For non-Local->Local blts
	Field dwNLVBRops_1:Int
	Field dwNLVBRops_2:Int
	Field dwNLVBRops_3:Int
	Field dwNLVBRops_4:Int
	Field dwNLVBRops_5:Int
	Field dwNLVBRops_6:Int
	Field dwNLVBRops_7:Int
' Members added For DX6 Release
' DDSCAPS2
	Field ddsCaps_0:Int' Surface Caps
	Field ddsCaps_1:Int
	Field ddsCaps_2:Int
	Field ddsCaps_3:Int
End Type

Type DDCAPS_DX7
	Field dwSize:Int' size of the DDDRIVERCAPS structure
	Field dwCaps:Int' driver specific capabilities
	Field dwCaps2:Int' more driver specific capabilites
	Field dwCKeyCaps:Int' color key capabilities of the surface
	Field dwFXCaps:Int' driver specific stretching And effects capabilites
	Field dwFXAlphaCaps:Int' alpha driver specific capabilities
	Field dwPalCaps:Int' palette capabilities
	Field dwSVCaps:Int' stereo vision capabilities
	Field dwAlphaBltConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaBltPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaBltSurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlayConstBitDepths:Int' DDBD_2,4,8
	Field dwAlphaOverlayPixelBitDepths:Int' DDBD_1,2,4,8
	Field dwAlphaOverlaySurfaceBitDepths:Int' DDBD_1,2,4,8
	Field dwZBufferBitDepths:Int' DDBD_8,16,24,32
	Field dwVidMemTotal:Int' total amount of video memory
	Field dwVidMemFree:Int' amount of free video memory
	Field dwMaxVisibleOverlays:Int' maximum number of visible overlays
	Field dwCurrVisibleOverlays:Int' current number of visible overlays
	Field dwNumFourCCCodes:Int' number of four cc codes
	Field dwAlignBoundarySrc:Int' source rectangle alignment
	Field dwAlignSizeSrc:Int' source rectangle Byte size
	Field dwAlignBoundaryDest:Int' dest rectangle alignment
	Field dwAlignSizeDest:Int' dest rectangle Byte size
	Field dwAlignStrideAlign:Int' stride alignment
	Field dwRops_0:Int' ROPS supported
	Field dwRops_1:Int
	Field dwRops_2:Int
	Field dwRops_3:Int
	Field dwRops_4:Int
	Field dwRops_5:Int
	Field dwRops_6:Int
	Field dwRops_7:Int
' DDSCAPS
	Field ddsOldCaps:Int' Was DDSCAPS ddsCaps. ddsCaps is of Type DDSCAPS2 For DX6
	Field dwMinOverlayStretch:Int' minimum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxOverlayStretch:Int' maximum overlay stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinLiveVideoStretch:Int' minimum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxLiveVideoStretch:Int' maximum live video stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMinHwCodecStretch:Int' minimum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwMaxHwCodecStretch:Int' maximum hardware codec stretch factor multiplied by 1000, eg 1000 == 1.0, 1300 == 1.3
	Field dwReserved1:Int' reserved
	Field dwReserved2:Int' reserved
	Field dwReserved3:Int' reserved
	Field dwSVBCaps:Int' driver specific capabilities For System->Vmem blts
	Field dwSVBCKeyCaps:Int' driver color key capabilities For System->Vmem blts
	Field dwSVBFXCaps:Int' driver FX capabilities For System->Vmem blts
	Field dwSVBRops_0:Int' ROPS supported For System->Vmem blts
	Field dwSVBRops_1:Int
	Field dwSVBRops_2:Int
	Field dwSVBRops_3:Int
	Field dwSVBRops_4:Int
	Field dwSVBRops_5:Int
	Field dwSVBRops_6:Int
	Field dwSVBRops_7:Int
	Field dwVSBCaps:Int' driver specific capabilities For Vmem->System blts
	Field dwVSBCKeyCaps:Int' driver color key capabilities For Vmem->System blts
	Field dwVSBFXCaps:Int' driver FX capabilities For Vmem->System blts
	Field dwVSBRops_0:Int' ROPS supported For Vmem->System blts
	Field dwVSBRops_1:Int
	Field dwVSBRops_2:Int
	Field dwVSBRops_3:Int
	Field dwVSBRops_4:Int
	Field dwVSBRops_5:Int
	Field dwVSBRops_6:Int
	Field dwVSBRops_7:Int
	Field dwSSBCaps:Int' driver specific capabilities For System->System blts
	Field dwSSBCKeyCaps:Int' driver color key capabilities For System->System blts
	Field dwSSBFXCaps:Int' driver FX capabilities For System->System blts
	Field dwSSBRops_0:Int' ROPS supported For System->System blts
	Field dwSSBRops_1:Int
	Field dwSSBRops_2:Int
	Field dwSSBRops_3:Int
	Field dwSSBRops_4:Int
	Field dwSSBRops_5:Int
	Field dwSSBRops_6:Int
	Field dwSSBRops_7:Int
	Field dwMaxVideoPorts:Int' maximum number of usable video ports
	Field dwCurrVideoPorts:Int' current number of video ports used
	Field dwSVBCaps2:Int' more driver specific capabilities For System->Vmem blts
	Field dwNLVBCaps:Int' driver specific capabilities For non-Local->Local vidmem blts
	Field dwNLVBCaps2:Int' more driver specific capabilities non-Local->Local vidmem blts
	Field dwNLVBCKeyCaps:Int' driver color key capabilities For non-Local->Local vidmem blts
	Field dwNLVBFXCaps:Int' driver FX capabilities For non-Local->Local blts
	Field dwNLVBRops_0:Int' ROPS supported For non-Local->Local blts
	Field dwNLVBRops_1:Int
	Field dwNLVBRops_2:Int
	Field dwNLVBRops_3:Int
	Field dwNLVBRops_4:Int
	Field dwNLVBRops_5:Int
	Field dwNLVBRops_6:Int
	Field dwNLVBRops_7:Int
	' Members added For DX6 Release
' DDSCAPS2
	Field ddsCaps_0:Int' Surface Caps
	Field ddsCaps_1:Int
	Field ddsCaps_2:Int
	Field ddsCaps_3:Int
End Type

Type DDPIXELFORMAT
	Field dwSize:Int' size of structure
	Field dwFlags:Int' pixel format flags
	Field dwFourCC:Int' (FOURCC code)
	Field BitCount:Int
	Field BitMask_0:Int
	Field BitMask_1:Int
	Field BitMask_2:Int
	Field BitMask_3:Int
End Type

Type DDOVERLAYFX
	Field dwSize:Int' size of structure
	Field dwAlphaEdgeBlendBitDepth:Int' Bit depth used To specify constant For alpha edge blend
	Field dwAlphaEdgeBlend:Int' Constant To use as alpha For edge blend
	Field dwReserved:Int
	Field dwAlphaDestConstBitDepth:Int' Bit depth used To specify alpha constant For destination
' union LPDIRECTDRAWSURFACE lpDDSAlphaDest
	Field dwAlphaDestConst:Int' Constant To use as alpha channel For dest
	Field dwAlphaSrcConstBitDepth:Int' Bit depth used To specify alpha constant For source
' union LPDIRECTDRAWSURFACE lpDDSAlphaSrc
	Field dwAlphaSrcConst:Int' Constant To use as alpha channel For src
' DDCOLORKEYs
	Field dckDestColorkey:Long' DestColorkey override
	Field dckSrcColorkey:Long' DestColorkey override
	Field dwDDFX:Int' Overlay FX
	Field dwFlags:Int' flags
End Type

Rem
Type DDBLTBATCH
	LPRECT lprDest
	LPDIRECTDRAWSURFACE lpDDSSrc
	LPRECT lprSrc
	Field dwFlags
	LPDDBLTFX lpDDBltFx;
End Type

Type DDGAMMARAMP
	WORD red[256];
	WORD green[256];
	WORD blue[256];
End Type

Const MAX_DDDEVICEID_STRING=512

Type tagDDDEVICEIDENTIFIER
	char szDriver[MAX_DDDEVICEID_STRING];
	char szDescription[MAX_DDDEVICEID_STRING];
	LARGE_INTEGER liDriverVersion; /* Defined For applications And other 32 bit components */
	Field dwVendorId;
	Field dwDeviceId;
	Field dwSubSysId;
	Field dwRevision;
	GUID guidDeviceIdentifier;
End Type

Type tagDDDEVICEIDENTIFIER2
	char szDriver[MAX_DDDEVICEID_STRING];
	char szDescription[MAX_DDDEVICEID_STRING];
	LARGE_INTEGER liDriverVersion; /* Defined For applications And other 32 bit components */
	Field dwVendorId;
	Field dwDeviceId;
	Field dwSubSysId;
	Field dwRevision;
	GUID guidDeviceIdentifier;
	Field dwWHQLLevel;
End Type
endrem

'Const DDGDI_GETHOSTIDENTIFIER=$1
'typedef DWORD (FAR PASCAL *LPCLIPPERCALLBACK)(LPDIRECTDRAWCLIPPER lpDDClipper, HWND hWnd, DWORD code, LPVOID lpContext );
'typedef DWORD (FAR PASCAL *LPSURFACESTREAMINGCALLBACK)(DWORD);

Extern "win32"

Interface IDirectDraw Extends IUnknown_
	Method Compact:Int()
	Method CreateClipper:Int()
	Method CreatePalette:Int()
	Method CreateSurface:Int(surfacedesc:Byte Ptr,surf:IDirectDrawSurface Ptr,outer:Byte Ptr)
	Method DuplicateSurface:Int()
	Method EnumDisplayModes:Int( flags:Int,surf:Byte Ptr,context:Object,callback:Int(surf:Byte Ptr,context:Object))	'surf:DDSurfaceDesc
	Method EnumSurfaces:Int()
	Method FlipToGDISurface:Int()
	Method GetCaps:Int( driverCaps:Byte Ptr,helCaps:Byte Ptr )
	Method GetDisplayMode:Int()
	Method GetFourCCCodes:Int()
	Method GetGDISurface:Int()
	Method GetMonitorFrequency:Int()
	Method GetScanLine:Int()
	Method GetVerticalBlankStatus:Int()
	Method Initialize:Int()
	Method RestoreDisplayMode:Int()
	Method SetCooperativeLevel:Int(hwnd:Byte Ptr,flags:Int)
	Method SetDisplayMode:Int(width:Int,height:Int,bpp:Int)
	Method WaitForVerticalBlank:Int(flags:Int,event:Byte Ptr)
Rem
 STDMETHOD(Compact)(THIS) PURE;
 STDMETHOD(CreateClipper)(THIS_ DWORD, LPDIRECTDRAWCLIPPER FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreatePalette)(THIS_ DWORD, LPPALETTEENTRY, LPDIRECTDRAWPALETTE FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreateSurface)(THIS_ LPDDSURFACEDESC, LPDIRECTDRAWSURFACE FAR *, IUnknown FAR *) PURE;
 STDMETHOD(DuplicateSurface)( THIS_ LPDIRECTDRAWSURFACE, LPDIRECTDRAWSURFACE FAR * ) PURE;
 STDMETHOD(EnumDisplayModes)( THIS_ DWORD, LPDDSURFACEDESC, LPVOID, LPDDENUMMODESCALLBACK ) PURE;
 STDMETHOD(EnumSurfaces)(THIS_ DWORD, LPDDSURFACEDESC, LPVOID,LPDDENUMSURFACESCALLBACK ) PURE;
 STDMETHOD(FlipToGDISurface)(THIS) PURE;
 STDMETHOD(GetCaps)( THIS_ LPDDCAPS, LPDDCAPS) PURE;
 STDMETHOD(GetDisplayMode)( THIS_ LPDDSURFACEDESC) PURE;
 STDMETHOD(GetFourCCCodes)(THIS_ LPDWORD, LPDWORD ) PURE;
 STDMETHOD(GetGDISurface)(THIS_ LPDIRECTDRAWSURFACE FAR *) PURE;
 STDMETHOD(GetMonitorFrequency)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetScanLine)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetVerticalBlankStatus)(THIS_ LPBOOL ) PURE;
 STDMETHOD(Initialize)(THIS_ GUID FAR *) PURE;
 STDMETHOD(RestoreDisplayMode)(THIS) PURE;
 STDMETHOD(SetCooperativeLevel)(THIS_ HWND, DWORD) PURE;
 STDMETHOD(SetDisplayMode)(THIS_ DWORD, DWORD,DWORD) PURE;
 STDMETHOD(WaitForVerticalBlank)(THIS_ DWORD, HANDLE ) PURE;
End Rem
End Interface 

Interface IDirectDraw2 Extends IUnknown_

Rem
 STDMETHOD(Compact)(THIS) PURE;
 STDMETHOD(CreateClipper)(THIS_ DWORD, LPDIRECTDRAWCLIPPER FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreatePalette)(THIS_ DWORD, LPPALETTEENTRY, LPDIRECTDRAWPALETTE FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreateSurface)(THIS_ LPDDSURFACEDESC, LPDIRECTDRAWSURFACE FAR *, IUnknown FAR *) PURE;
 STDMETHOD(DuplicateSurface)( THIS_ LPDIRECTDRAWSURFACE, LPDIRECTDRAWSURFACE FAR * ) PURE;
 STDMETHOD(EnumDisplayModes)( THIS_ DWORD, LPDDSURFACEDESC, LPVOID, LPDDENUMMODESCALLBACK ) PURE;
 STDMETHOD(EnumSurfaces)(THIS_ DWORD, LPDDSURFACEDESC, LPVOID,LPDDENUMSURFACESCALLBACK ) PURE;
 STDMETHOD(FlipToGDISurface)(THIS) PURE;
 STDMETHOD(GetCaps)( THIS_ LPDDCAPS, LPDDCAPS) PURE;
 STDMETHOD(GetDisplayMode)( THIS_ LPDDSURFACEDESC) PURE;
 STDMETHOD(GetFourCCCodes)(THIS_ LPDWORD, LPDWORD ) PURE;
 STDMETHOD(GetGDISurface)(THIS_ LPDIRECTDRAWSURFACE FAR *) PURE;
 STDMETHOD(GetMonitorFrequency)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetScanLine)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetVerticalBlankStatus)(THIS_ LPBOOL ) PURE;
 STDMETHOD(Initialize)(THIS_ GUID FAR *) PURE;
 STDMETHOD(RestoreDisplayMode)(THIS) PURE;
 STDMETHOD(SetCooperativeLevel)(THIS_ HWND, DWORD) PURE;
 STDMETHOD(SetDisplayMode)(THIS_ DWORD, DWORD,DWORD, DWORD, DWORD) PURE;
 STDMETHOD(WaitForVerticalBlank)(THIS_ DWORD, HANDLE ) PURE;
 ' Added in the v2 interface
 STDMETHOD(GetAvailableVidMem)(THIS_ LPDDSCAPS, LPDWORD, LPDWORD) PURE;
End Rem
End Interface 

Interface IDirectDraw4 Extends IUnknown_
Rem
 STDMETHOD(Compact)(THIS) PURE;
 STDMETHOD(CreateClipper)(THIS_ DWORD, LPDIRECTDRAWCLIPPER FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreatePalette)(THIS_ DWORD, LPPALETTEENTRY, LPDIRECTDRAWPALETTE FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreateSurface)(THIS_ LPDDSURFACEDESC2, LPDIRECTDRAWSURFACE4 FAR *, IUnknown FAR *) PURE;
 STDMETHOD(DuplicateSurface)( THIS_ LPDIRECTDRAWSURFACE4, LPDIRECTDRAWSURFACE4 FAR * ) PURE;
 STDMETHOD(EnumDisplayModes)( THIS_ DWORD, LPDDSURFACEDESC2, LPVOID, LPDDENUMMODESCALLBACK2 ) PURE;
 STDMETHOD(EnumSurfaces)(THIS_ DWORD, LPDDSURFACEDESC2, LPVOID,LPDDENUMSURFACESCALLBACK2 ) PURE;
 STDMETHOD(FlipToGDISurface)(THIS) PURE;
 STDMETHOD(GetCaps)( THIS_ LPDDCAPS, LPDDCAPS) PURE;
 STDMETHOD(GetDisplayMode)( THIS_ LPDDSURFACEDESC2) PURE;
 STDMETHOD(GetFourCCCodes)(THIS_ LPDWORD, LPDWORD ) PURE;
 STDMETHOD(GetGDISurface)(THIS_ LPDIRECTDRAWSURFACE4 FAR *) PURE;
 STDMETHOD(GetMonitorFrequency)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetScanLine)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetVerticalBlankStatus)(THIS_ LPBOOL ) PURE;
 STDMETHOD(Initialize)(THIS_ GUID FAR *) PURE;
 STDMETHOD(RestoreDisplayMode)(THIS) PURE;
 STDMETHOD(SetCooperativeLevel)(THIS_ HWND, DWORD) PURE;
 STDMETHOD(SetDisplayMode)(THIS_ DWORD, DWORD,DWORD, DWORD, DWORD) PURE;
 STDMETHOD(WaitForVerticalBlank)(THIS_ DWORD, HANDLE ) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetAvailableVidMem)(THIS_ LPDDSCAPS2, LPDWORD, LPDWORD) PURE;
' /*** Added in the V4 Interface ***/
 STDMETHOD(GetSurfaceFromDC) (THIS_ HDC, LPDIRECTDRAWSURFACE4 *) PURE;
 STDMETHOD(RestoreAllSurfaces)(THIS) PURE;
 STDMETHOD(TestCooperativeLevel)(THIS) PURE;
 STDMETHOD(GetDeviceIdentifier)(THIS_ LPDDDEVICEIDENTIFIER, DWORD ) PURE;
End Rem
End Interface 

Interface IDirectDraw7 Extends IUnknown_
	Method Compact:Int()
	Method CreateClipper:Int(flags:Int,clipper:Byte Ptr,outer:Byte Ptr)
	Method CreatePalette:Int()
	Method CreateSurface:Int(surfdesc2:Byte Ptr,surf:IDirectDrawSurface7 Ptr,outer:Byte Ptr)
	Method DuplicateSurface:Int()
	Method EnumDisplayModes:Int(flags:Int,surfdesc2:Byte Ptr,context:Object,callback:Int(surfdesc2:Byte Ptr,context:Object))	'surf:DDSurfaceDesc
	Method EnumSurfaces:Int()
	Method FlipToGDISurface:Int()
	Method GetCaps:Int( driverCaps:Byte Ptr,helCaps:Byte Ptr )
	Method GetDisplayMode:Int()
	Method GetFourCCCodes:Int()
	Method GetGDISurface:Int()
	Method GetMonitorFrequency:Int()
	Method GetScanLine:Int()
	Method GetVerticalBlankStatus:Int()
	Method Initialize:Int()
	Method RestoreDisplayMode:Int()
	Method SetCooperativeLevel:Int(hwnd:Byte Ptr,flags:Int)
	Method SetDisplayMode:Int(width:Int,height:Int,bpp:Int,rate:Int,flags:Int)
	Method WaitForVerticalBlank:Int(flags:Int,event:Byte Ptr)
	
	Method GetAvailableVidMem:Int(Caps:Byte Ptr, Total:Int Ptr, Free: Int Ptr)
	Method GetSurfaceFromDC:Int(HDC:Byte Ptr, surf:IDirectDrawSurface7 Var)
	Method RestoreAllSurfaces:Int()
	Method TestCooperativeLevel:Int()

	
	
Rem
 STDMETHOD(Compact)(THIS) PURE;
 STDMETHOD(CreateClipper)(THIS_ DWORD, LPDIRECTDRAWCLIPPER FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreatePalette)(THIS_ DWORD, LPPALETTEENTRY, LPDIRECTDRAWPALETTE FAR*, IUnknown FAR * ) PURE;
 STDMETHOD(CreateSurface)(THIS_ LPDDSURFACEDESC2, LPDIRECTDRAWSURFACE7 FAR *, IUnknown FAR *) PURE;
 STDMETHOD(DuplicateSurface)( THIS_ LPDIRECTDRAWSURFACE7, LPDIRECTDRAWSURFACE7 FAR * ) PURE;
 STDMETHOD(EnumDisplayModes)( THIS_ DWORD, LPDDSURFACEDESC2, LPVOID, LPDDENUMMODESCALLBACK2 ) PURE;
 STDMETHOD(EnumSurfaces)(THIS_ DWORD, LPDDSURFACEDESC2, LPVOID,LPDDENUMSURFACESCALLBACK7 ) PURE;
 STDMETHOD(FlipToGDISurface)(THIS) PURE;
 STDMETHOD(GetCaps)( THIS_ LPDDCAPS, LPDDCAPS) PURE;
 STDMETHOD(GetDisplayMode)( THIS_ LPDDSURFACEDESC2) PURE;
 STDMETHOD(GetFourCCCodes)(THIS_ LPDWORD, LPDWORD ) PURE;
 STDMETHOD(GetGDISurface)(THIS_ LPDIRECTDRAWSURFACE7 FAR *) PURE;
 STDMETHOD(GetMonitorFrequency)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetScanLine)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetVerticalBlankStatus)(THIS_ LPBOOL ) PURE;
 STDMETHOD(Initialize)(THIS_ GUID FAR *) PURE;
 STDMETHOD(RestoreDisplayMode)(THIS) PURE;
 STDMETHOD(SetCooperativeLevel)(THIS_ HWND, DWORD) PURE;
 STDMETHOD(SetDisplayMode)(THIS_ DWORD, DWORD,DWORD, DWORD, DWORD) PURE;
 STDMETHOD(WaitForVerticalBlank)(THIS_ DWORD, HANDLE ) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetAvailableVidMem)(THIS_ LPDDSCAPS2, LPDWORD, LPDWORD) PURE;
' /*** Added in the V4 Interface ***/
 STDMETHOD(GetSurfaceFromDC) (THIS_ HDC, LPDIRECTDRAWSURFACE7 *) PURE;
 STDMETHOD(RestoreAllSurfaces)(THIS) PURE;
 STDMETHOD(TestCooperativeLevel)(THIS) PURE;
 STDMETHOD(GetDeviceIdentifier)(THIS_ LPDDDEVICEIDENTIFIER2, DWORD ) PURE;
 STDMETHOD(StartModeTest)(THIS_ LPSIZE, DWORD, DWORD ) PURE;
 STDMETHOD(EvaluateMode)(THIS_ DWORD, DWORD * ) PURE;
End Rem
End Interface 

Interface IDirectDrawPalette Extends IUnknown_
Rem
 STDMETHOD(GetCaps)(THIS_ LPDWORD) PURE;
 STDMETHOD(GetEntries)(THIS_ DWORD,DWORD,DWORD,LPPALETTEENTRY) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, DWORD, LPPALETTEENTRY) PURE;
 STDMETHOD(SetEntries)(THIS_ DWORD,DWORD,DWORD,LPPALETTEENTRY) PURE;
End Rem
End Interface 

Interface IDirectDrawClipper Extends IUnknown_
	Method GetClipList:Int(rect:Byte Ptr,region:Byte Ptr,flags:Int)
	Method GetHWnd:Int()
	Method Initialize:Int()
	Method IsClipListChanged:Int()
	Method SetClipList:Int()
	Method SetHWnd:Int(flags:Int,hwnd:Byte Ptr)
Rem
 STDMETHOD(GetClipList)(THIS_ LPRECT, LPRGNDATA, LPDWORD) PURE;
 STDMETHOD(GetHWnd)(THIS_ HWND FAR *) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, DWORD) PURE;
 STDMETHOD(IsClipListChanged)(THIS_ BOOL FAR *) PURE;
 STDMETHOD(SetClipList)(THIS_ LPRGNDATA,DWORD) PURE;
 STDMETHOD(SetHWnd)(THIS_ DWORD, HWND ) PURE;
End Rem
End Interface 

Interface IDirectDrawSurface Extends IUnknown_
	Method AddAttachedSurface:Int(surface:Byte Ptr)
	Method AddOverlayDirtyRect:Int(rect:Byte Ptr)
	Method Blt:Int(destrect:Byte Ptr,srcsurface:Byte Ptr,srcrect:Byte Ptr,flags:Int,blitfx:Byte Ptr)
	Method BltBatch:Int(bltbatch:Byte Ptr,count:Int,flags:Int)
	Method BltFast:Int(x:Int,y:Int,srcsurface:Byte Ptr,srcrect:Byte Ptr,trans:Int)
	Method DeleteAttachedSurface:Int(flags:Int,surface:Byte Ptr)
	Method EnumAttachedSurfaces:Int()
	Method EnumOverlayZOrders:Int()
	Method Flip:Int(target:Byte Ptr,flags:Int)
	Method GetAttachedSurface:Int(caps:Byte Ptr,surface:IDirectDrawSurface Ptr)
Rem
 STDMETHOD(AddAttachedSurface)(THIS_ LPDIRECTDRAWSURFACE) PURE;
 STDMETHOD(AddOverlayDirtyRect)(THIS_ LPRECT) PURE;
 STDMETHOD(Blt)(THIS_ LPRECT,LPDIRECTDRAWSURFACE, LPRECT,DWORD, LPDDBLTFX) PURE;
 STDMETHOD(BltBatch)(THIS_ LPDDBLTBATCH, DWORD, DWORD ) PURE;
 STDMETHOD(BltFast)(THIS_ DWORD,DWORD,LPDIRECTDRAWSURFACE, LPRECT,DWORD) PURE;
 STDMETHOD(DeleteAttachedSurface)(THIS_ DWORD,LPDIRECTDRAWSURFACE) PURE;
 STDMETHOD(EnumAttachedSurfaces)(THIS_ LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(EnumOverlayZOrders)(THIS_ DWORD,LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(Flip)(THIS_ LPDIRECTDRAWSURFACE, DWORD) PURE;
 STDMETHOD(GetAttachedSurface)(THIS_ LPDDSCAPS, LPDIRECTDRAWSURFACE FAR *) PURE;
 STDMETHOD(GetBltStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetCaps)(THIS_ LPDDSCAPS) PURE;
 STDMETHOD(GetClipper)(THIS_ LPDIRECTDRAWCLIPPER FAR*) PURE;
 STDMETHOD(GetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(GetDC)(THIS_ HDC FAR *) PURE;
 STDMETHOD(GetFlipStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetOverlayPosition)(THIS_ LPLONG, LPLONG ) PURE;
 STDMETHOD(GetPalette)(THIS_ LPDIRECTDRAWPALETTE FAR*) PURE;
 STDMETHOD(GetPixelFormat)(THIS_ LPDDPIXELFORMAT) PURE;
 STDMETHOD(GetSurfaceDesc)(THIS_ LPDDSURFACEDESC) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, LPDDSURFACEDESC) PURE;
 STDMETHOD(IsLost)(THIS) PURE;
 STDMETHOD(Lock)(THIS_ LPRECT,LPDDSURFACEDESC,DWORD,HANDLE) PURE;
 STDMETHOD(ReleaseDC)(THIS_ HDC) PURE;
 STDMETHOD(Restore)(THIS) PURE;
 STDMETHOD(SetClipper)(THIS_ LPDIRECTDRAWCLIPPER) PURE;
 STDMETHOD(SetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(SetOverlayPosition)(THIS_ Long, Long ) PURE;
 STDMETHOD(SetPalette)(THIS_ LPDIRECTDRAWPALETTE) PURE;
 STDMETHOD(Unlock)(THIS_ LPVOID) PURE;
 STDMETHOD(UpdateOverlay)(THIS_ LPRECT, LPDIRECTDRAWSURFACE,LPRECT,DWORD, LPDDOVERLAYFX) PURE;
 STDMETHOD(UpdateOverlayDisplay)(THIS_ DWORD) PURE;
 STDMETHOD(UpdateOverlayZOrder)(THIS_ DWORD, LPDIRECTDRAWSURFACE) PURE;
End Rem
End Interface 

Interface IDirectDrawSUrface2 Extends IUnknown_
Rem
 STDMETHOD(AddAttachedSurface)(THIS_ LPDIRECTDRAWSURFACE2) PURE;
 STDMETHOD(AddOverlayDirtyRect)(THIS_ LPRECT) PURE;
 STDMETHOD(Blt)(THIS_ LPRECT,LPDIRECTDRAWSURFACE2, LPRECT,DWORD, LPDDBLTFX) PURE;
 STDMETHOD(BltBatch)(THIS_ LPDDBLTBATCH, DWORD, DWORD ) PURE;
 STDMETHOD(BltFast)(THIS_ DWORD,DWORD,LPDIRECTDRAWSURFACE2, LPRECT,DWORD) PURE;
 STDMETHOD(DeleteAttachedSurface)(THIS_ DWORD,LPDIRECTDRAWSURFACE2) PURE;
 STDMETHOD(EnumAttachedSurfaces)(THIS_ LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(EnumOverlayZOrders)(THIS_ DWORD,LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(Flip)(THIS_ LPDIRECTDRAWSURFACE2, DWORD) PURE;
 STDMETHOD(GetAttachedSurface)(THIS_ LPDDSCAPS, LPDIRECTDRAWSURFACE2 FAR *) PURE;
 STDMETHOD(GetBltStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetCaps)(THIS_ LPDDSCAPS) PURE;
 STDMETHOD(GetClipper)(THIS_ LPDIRECTDRAWCLIPPER FAR*) PURE;
 STDMETHOD(GetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(GetDC)(THIS_ HDC FAR *) PURE;
 STDMETHOD(GetFlipStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetOverlayPosition)(THIS_ LPLONG, LPLONG ) PURE;
 STDMETHOD(GetPalette)(THIS_ LPDIRECTDRAWPALETTE FAR*) PURE;
 STDMETHOD(GetPixelFormat)(THIS_ LPDDPIXELFORMAT) PURE;
 STDMETHOD(GetSurfaceDesc)(THIS_ LPDDSURFACEDESC) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, LPDDSURFACEDESC) PURE;
 STDMETHOD(IsLost)(THIS) PURE;
 STDMETHOD(Lock)(THIS_ LPRECT,LPDDSURFACEDESC,DWORD,HANDLE) PURE;
 STDMETHOD(ReleaseDC)(THIS_ HDC) PURE;
 STDMETHOD(Restore)(THIS) PURE;
 STDMETHOD(SetClipper)(THIS_ LPDIRECTDRAWCLIPPER) PURE;
 STDMETHOD(SetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(SetOverlayPosition)(THIS_ Long, Long ) PURE;
 STDMETHOD(SetPalette)(THIS_ LPDIRECTDRAWPALETTE) PURE;
 STDMETHOD(Unlock)(THIS_ LPVOID) PURE;
 STDMETHOD(UpdateOverlay)(THIS_ LPRECT, LPDIRECTDRAWSURFACE2,LPRECT,DWORD, LPDDOVERLAYFX) PURE;
 STDMETHOD(UpdateOverlayDisplay)(THIS_ DWORD) PURE;
 STDMETHOD(UpdateOverlayZOrder)(THIS_ DWORD, LPDIRECTDRAWSURFACE2) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetDDInterface)(THIS_ LPVOID FAR *) PURE;
 STDMETHOD(PageLock)(THIS_ DWORD) PURE;
 STDMETHOD(PageUnlock)(THIS_ DWORD) PURE;
End Rem
End Interface 

Interface IDirectDrawSurface3 Extends IUnknown_
Rem
 STDMETHOD(AddAttachedSurface)(THIS_ LPDIRECTDRAWSURFACE3) PURE;
 STDMETHOD(AddOverlayDirtyRect)(THIS_ LPRECT) PURE;
 STDMETHOD(Blt)(THIS_ LPRECT,LPDIRECTDRAWSURFACE3, LPRECT,DWORD, LPDDBLTFX) PURE;
 STDMETHOD(BltBatch)(THIS_ LPDDBLTBATCH, DWORD, DWORD ) PURE;
 STDMETHOD(BltFast)(THIS_ DWORD,DWORD,LPDIRECTDRAWSURFACE3, LPRECT,DWORD) PURE;
 STDMETHOD(DeleteAttachedSurface)(THIS_ DWORD,LPDIRECTDRAWSURFACE3) PURE;
 STDMETHOD(EnumAttachedSurfaces)(THIS_ LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(EnumOverlayZOrders)(THIS_ DWORD,LPVOID,LPDDENUMSURFACESCALLBACK) PURE;
 STDMETHOD(Flip)(THIS_ LPDIRECTDRAWSURFACE3, DWORD) PURE;
 STDMETHOD(GetAttachedSurface)(THIS_ LPDDSCAPS, LPDIRECTDRAWSURFACE3 FAR *) PURE;
 STDMETHOD(GetBltStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetCaps)(THIS_ LPDDSCAPS) PURE;
 STDMETHOD(GetClipper)(THIS_ LPDIRECTDRAWCLIPPER FAR*) PURE;
 STDMETHOD(GetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(GetDC)(THIS_ HDC FAR *) PURE;
 STDMETHOD(GetFlipStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetOverlayPosition)(THIS_ LPLONG, LPLONG ) PURE;
 STDMETHOD(GetPalette)(THIS_ LPDIRECTDRAWPALETTE FAR*) PURE;
 STDMETHOD(GetPixelFormat)(THIS_ LPDDPIXELFORMAT) PURE;
 STDMETHOD(GetSurfaceDesc)(THIS_ LPDDSURFACEDESC) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, LPDDSURFACEDESC) PURE;
 STDMETHOD(IsLost)(THIS) PURE;
 STDMETHOD(Lock)(THIS_ LPRECT,LPDDSURFACEDESC,DWORD,HANDLE) PURE;
 STDMETHOD(ReleaseDC)(THIS_ HDC) PURE;
 STDMETHOD(Restore)(THIS) PURE;
 STDMETHOD(SetClipper)(THIS_ LPDIRECTDRAWCLIPPER) PURE;
 STDMETHOD(SetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(SetOverlayPosition)(THIS_ Long, Long ) PURE;
 STDMETHOD(SetPalette)(THIS_ LPDIRECTDRAWPALETTE) PURE;
 STDMETHOD(Unlock)(THIS_ LPVOID) PURE;
 STDMETHOD(UpdateOverlay)(THIS_ LPRECT, LPDIRECTDRAWSURFACE3,LPRECT,DWORD, LPDDOVERLAYFX) PURE;
 STDMETHOD(UpdateOverlayDisplay)(THIS_ DWORD) PURE;
 STDMETHOD(UpdateOverlayZOrder)(THIS_ DWORD, LPDIRECTDRAWSURFACE3) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetDDInterface)(THIS_ LPVOID FAR *) PURE;
 STDMETHOD(PageLock)(THIS_ DWORD) PURE;
 STDMETHOD(PageUnlock)(THIS_ DWORD) PURE;
' /*** Added in the V3 interface ***/
 STDMETHOD(SetSurfaceDesc)(THIS_ LPDDSURFACEDESC, DWORD) PURE;
End Rem
End Interface 

Interface IDirectDrawSurface4 Extends IUnknown_
Rem
 STDMETHOD(AddAttachedSurface)(THIS_ LPDIRECTDRAWSURFACE4) PURE;
 STDMETHOD(AddOverlayDirtyRect)(THIS_ LPRECT) PURE;
 STDMETHOD(Blt)(THIS_ LPRECT,LPDIRECTDRAWSURFACE4, LPRECT,DWORD, LPDDBLTFX) PURE;
 STDMETHOD(BltBatch)(THIS_ LPDDBLTBATCH, DWORD, DWORD ) PURE;
 STDMETHOD(BltFast)(THIS_ DWORD,DWORD,LPDIRECTDRAWSURFACE4, LPRECT,DWORD) PURE;
 STDMETHOD(DeleteAttachedSurface)(THIS_ DWORD,LPDIRECTDRAWSURFACE4) PURE;
 STDMETHOD(EnumAttachedSurfaces)(THIS_ LPVOID,LPDDENUMSURFACESCALLBACK2) PURE;
 STDMETHOD(EnumOverlayZOrders)(THIS_ DWORD,LPVOID,LPDDENUMSURFACESCALLBACK2) PURE;
 STDMETHOD(Flip)(THIS_ LPDIRECTDRAWSURFACE4, DWORD) PURE;
 STDMETHOD(GetAttachedSurface)(THIS_ LPDDSCAPS2, LPDIRECTDRAWSURFACE4 FAR *) PURE;
 STDMETHOD(GetBltStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetCaps)(THIS_ LPDDSCAPS2) PURE;
 STDMETHOD(GetClipper)(THIS_ LPDIRECTDRAWCLIPPER FAR*) PURE;
 STDMETHOD(GetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(GetDC)(THIS_ HDC FAR *) PURE;
 STDMETHOD(GetFlipStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetOverlayPosition)(THIS_ LPLONG, LPLONG ) PURE;
 STDMETHOD(GetPalette)(THIS_ LPDIRECTDRAWPALETTE FAR*) PURE;
 STDMETHOD(GetPixelFormat)(THIS_ LPDDPIXELFORMAT) PURE;
 STDMETHOD(GetSurfaceDesc)(THIS_ LPDDSURFACEDESC2) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, LPDDSURFACEDESC2) PURE;
 STDMETHOD(IsLost)(THIS) PURE;
 STDMETHOD(Lock)(THIS_ LPRECT,LPDDSURFACEDESC2,DWORD,HANDLE) PURE;
 STDMETHOD(ReleaseDC)(THIS_ HDC) PURE;
 STDMETHOD(Restore)(THIS) PURE;
 STDMETHOD(SetClipper)(THIS_ LPDIRECTDRAWCLIPPER) PURE;
 STDMETHOD(SetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(SetOverlayPosition)(THIS_ Long, Long ) PURE;
 STDMETHOD(SetPalette)(THIS_ LPDIRECTDRAWPALETTE) PURE;
 STDMETHOD(Unlock)(THIS_ LPRECT) PURE;
 STDMETHOD(UpdateOverlay)(THIS_ LPRECT, LPDIRECTDRAWSURFACE4,LPRECT,DWORD, LPDDOVERLAYFX) PURE;
 STDMETHOD(UpdateOverlayDisplay)(THIS_ DWORD) PURE;
 STDMETHOD(UpdateOverlayZOrder)(THIS_ DWORD, LPDIRECTDRAWSURFACE4) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetDDInterface)(THIS_ LPVOID FAR *) PURE;
 STDMETHOD(PageLock)(THIS_ DWORD) PURE;
 STDMETHOD(PageUnlock)(THIS_ DWORD) PURE;
' /*** Added in the v3 interface ***/
 STDMETHOD(SetSurfaceDesc)(THIS_ LPDDSURFACEDESC2, DWORD) PURE;
' /*** Added in the v4 interface ***/
 STDMETHOD(SetPrivateData)(THIS_ REFGUID, LPVOID, DWORD, DWORD) PURE;
 STDMETHOD(GetPrivateData)(THIS_ REFGUID, LPVOID, LPDWORD) PURE;
 STDMETHOD(FreePrivateData)(THIS_ REFGUID) PURE;
 STDMETHOD(GetUniquenessValue)(THIS_ LPDWORD) PURE;
 STDMETHOD(ChangeUniquenessValue)(THIS) PURE;
End Rem
End Interface 

Interface IDirectDrawSurface7 Extends IUnknown_
	Method AddAttachedSurface:Int(surface:Byte Ptr)
	Method AddOverlayDirtyRect:Int(rect:Byte Ptr)
	Method Blt:Int(destrect:Byte Ptr,srcsurface:Byte Ptr,srcrect:Byte Ptr,flags:Int,blitfx:Byte Ptr)
	Method BltBatch:Int(bltbatch:Byte Ptr,count:Int,flags:Int)
	Method BltFast:Int(x:Int,y:Int,srcsurface:Byte Ptr,srcrect:Byte Ptr,trans:Int)
	Method DeleteAttachedSurface:Int(flags:Int,surface:Byte Ptr)
	Method EnumAttachedSurfaces:Int()
	Method EnumOverlayZOrders:Int()
	Method Flip:Int(target:Byte Ptr,flags:Int)
	Method GetAttachedSurface:Int(caps:Byte Ptr,surface:IDirectDrawSurface7 Ptr)
	Method GetBltStatus:Int()
	Method GetCaps:Int()
	Method GetClipper:Int()
	Method GetColorKey:Int()
	Method GetDC:Int(hdc:Byte Ptr Var)
	Method GetFlipStatus:Int()
	Method GetOverlayPosition:Int()
	Method GetPalette:Int()
	Method GetPixelFormat:Int()
	Method GetSurfaceDesc:Int(surfdesc:Byte Ptr)
	Method Initialize:Int()
	Method IsLost:Int()
	Method Lock:Int(rect:Byte Ptr,surfacedesc2:Byte Ptr,flags:Int,handle:Byte Ptr)
	Method ReleaseDC:Int(hdc:Byte Ptr)
	Method Restore:Int()
	Method SetClipper:Int(clipper:Byte Ptr)
	Method SetColorKey:Int()
	Method SetOverlayPosition:Int()
	Method SetPalette:Int()
	Method Unlock:Int(rect:Byte Ptr)
	Method UpdateOverlay:Int()
	Method UpdateOverlayDisplay:Int()
	Method UpdateOverlayZOrder:Int()
	Method GetDDInterface:Int(ddinterface:Byte Ptr)
	Method PageLock:Int(flags:Int)
	Method PageUnlock:Int(flags:Int)
Rem
 STDMETHOD(AddAttachedSurface)(THIS_ LPDIRECTDRAWSURFACE7) PURE;
 STDMETHOD(AddOverlayDirtyRect)(THIS_ LPRECT) PURE;
 STDMETHOD(Blt)(THIS_ LPRECT,LPDIRECTDRAWSURFACE7, LPRECT,DWORD, LPDDBLTFX) PURE;
 STDMETHOD(BltBatch)(THIS_ LPDDBLTBATCH, DWORD, DWORD ) PURE;
 STDMETHOD(BltFast)(THIS_ DWORD,DWORD,LPDIRECTDRAWSURFACE7, LPRECT,DWORD) PURE;
 STDMETHOD(DeleteAttachedSurface)(THIS_ DWORD,LPDIRECTDRAWSURFACE7) PURE;
 STDMETHOD(EnumAttachedSurfaces)(THIS_ LPVOID,LPDDENUMSURFACESCALLBACK7) PURE;
 STDMETHOD(EnumOverlayZOrders)(THIS_ DWORD,LPVOID,LPDDENUMSURFACESCALLBACK7) PURE;
 STDMETHOD(Flip)(THIS_ LPDIRECTDRAWSURFACE7, DWORD) PURE;
 STDMETHOD(GetAttachedSurface)(THIS_ LPDDSCAPS2, LPDIRECTDRAWSURFACE7 FAR *) PURE;
 STDMETHOD(GetBltStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetCaps)(THIS_ LPDDSCAPS2) PURE;
 STDMETHOD(GetClipper)(THIS_ LPDIRECTDRAWCLIPPER FAR*) PURE;
 STDMETHOD(GetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(GetDC)(THIS_ HDC FAR *) PURE;
 STDMETHOD(GetFlipStatus)(THIS_ DWORD) PURE;
 STDMETHOD(GetOverlayPosition)(THIS_ LPLONG, LPLONG ) PURE;
 STDMETHOD(GetPalette)(THIS_ LPDIRECTDRAWPALETTE FAR*) PURE;
 STDMETHOD(GetPixelFormat)(THIS_ LPDDPIXELFORMAT) PURE;
 STDMETHOD(GetSurfaceDesc)(THIS_ LPDDSURFACEDESC2) PURE;
 STDMETHOD(Initialize)(THIS_ LPDIRECTDRAW, LPDDSURFACEDESC2) PURE;
 STDMETHOD(IsLost)(THIS) PURE;
 STDMETHOD(Lock)(THIS_ LPRECT,LPDDSURFACEDESC2,DWORD,HANDLE) PURE;
 STDMETHOD(ReleaseDC)(THIS_ HDC) PURE;
 STDMETHOD(Restore)(THIS) PURE;
 STDMETHOD(SetClipper)(THIS_ LPDIRECTDRAWCLIPPER) PURE;
 STDMETHOD(SetColorKey)(THIS_ DWORD, LPDDCOLORKEY) PURE;
 STDMETHOD(SetOverlayPosition)(THIS_ Long, Long ) PURE;
 STDMETHOD(SetPalette)(THIS_ LPDIRECTDRAWPALETTE) PURE;
 STDMETHOD(Unlock)(THIS_ LPRECT) PURE;
 STDMETHOD(UpdateOverlay)(THIS_ LPRECT, LPDIRECTDRAWSURFACE7,LPRECT,DWORD, LPDDOVERLAYFX) PURE;
 STDMETHOD(UpdateOverlayDisplay)(THIS_ DWORD) PURE;
 STDMETHOD(UpdateOverlayZOrder)(THIS_ DWORD, LPDIRECTDRAWSURFACE7) PURE;
' /*** Added in the v2 interface ***/
 STDMETHOD(GetDDInterface)(THIS_ LPVOID FAR *) PURE;
 STDMETHOD(PageLock)(THIS_ DWORD) PURE;
 STDMETHOD(PageUnlock)(THIS_ DWORD) PURE;
' /*** Added in the v3 interface ***/
 STDMETHOD(SetSurfaceDesc)(THIS_ LPDDSURFACEDESC2, DWORD) PURE;
' /*** Added in the v4 interface ***/
 STDMETHOD(SetPrivateData)(THIS_ REFGUID, LPVOID, DWORD, DWORD) PURE;
 STDMETHOD(GetPrivateData)(THIS_ REFGUID, LPVOID, LPDWORD) PURE;
 STDMETHOD(FreePrivateData)(THIS_ REFGUID) PURE;
 STDMETHOD(GetUniquenessValue)(THIS_ LPDWORD) PURE;
 STDMETHOD(ChangeUniquenessValue)(THIS) PURE;
' /*** Moved Texture7 methods here ***/
 STDMETHOD(SetPriority)(THIS_ DWORD) PURE;
 STDMETHOD(GetPriority)(THIS_ LPDWORD) PURE;
 STDMETHOD(SetLOD)(THIS_ DWORD) PURE;
 STDMETHOD(GetLOD)(THIS_ LPDWORD) PURE;
End Rem
End Interface 

Interface IDirectDrawColorControl Extends IUnknown_
Rem
DECLARE_INTERFACE_( IDirectDrawColorControl, IUnknown )
 STDMETHOD(GetColorControls)(THIS_ LPDDCOLORCONTROL) PURE;
 STDMETHOD(SetColorControls)(THIS_ LPDDCOLORCONTROL) PURE;
End Rem
End Interface 

Interface IDirectDrawGammaControl Extends IUnknown_
Rem
 STDMETHOD(GetGammaRamp)(THIS_ DWORD, LPDDGAMMARAMP) PURE;
 STDMETHOD(SetGammaRamp)(THIS_ DWORD, LPDDGAMMARAMP) PURE;
End Rem
End Interface 

End Extern

Global ddLib:Byte Ptr=LoadLibraryA( "ddraw" )

If Not ddLib Return 0

Global IID_IDirectDraw7:Int[]=[$15e65ec0,$11d23b9c,$60002fb9,$5bea9797]

Global DirectDrawCreate:Int( guid:Int Ptr,ddraw:IDirectDraw Ptr,outer:Int Ptr )"win32"=GetProcAddress( ddLib,"DirectDrawCreate" )
Global DirectDrawCreateEx:Int( guid:Byte Ptr,ddraw:Byte Ptr,iid:Int Ptr,outer:Byte Ptr )"win32"=GetProcAddress( ddLib,"DirectDrawCreateEx" )
Global DirectDrawEnumerate:Int( callback:Int(guid:Int Ptr,desc:Byte Ptr,name:Byte Ptr,context:Int Ptr),context:Int Ptr )"win32"=GetProcAddress( ddLib,"DirectDrawEnumerateA" )

