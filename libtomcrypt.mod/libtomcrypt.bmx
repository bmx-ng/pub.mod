SuperStrict


Module Pub.libtomcrypt

ModuleInfo "CC_OPTS: -DLTC_NO_TEST -DLTC_NO_FILE"

Import "libtomcrypt/src/headers/*.h"

Import "libtomcrypt/src/hashes/md5.c"
Import "libtomcrypt/src/hashes/sha1.c"
Import "libtomcrypt/src/hashes/sha2/sha256.c"
Import "libtomcrypt/src/hashes/sha2/sha512.c"

Import "libtomcrypt/src/misc/crc32.c"

Import "libtomcrypt/src/misc/base16/base16_decode.c"
Import "libtomcrypt/src/misc/base16/base16_encode.c"

Import "libtomcrypt/src/misc/compare_testvector.c"
Import "libtomcrypt/src/misc/crypt/crypt_argchk.c"
