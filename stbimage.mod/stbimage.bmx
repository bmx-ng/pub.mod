SuperStrict

Module Pub.StbImage

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Sean Barrett and contributers (see stb_image.h)"
ModuleInfo "License: ZLib/PNG License"
ModuleInfo "Credit: Adapted for BlitzMax by Bruce A Henderson"

ModuleInfo "History: 1.00"
ModuleInfo "History: Initial Release. stb_image 2.13"


Import "glue.c"


Extern

	Function stbi_image_free(handle:Byte Ptr)

End Extern


Const STBI_grey:Int       = 1
Const STBI_grey_alpha:Int = 2
Const STBI_rgb:Int        = 3
Const STBI_rgb_alpha:Int  = 4

