/* LibTomCrypt, modular cryptographic library -- Tom St Denis
 *
 * LibTomCrypt is a library that provides various cryptographic
 * algorithms in a highly modular and flexible manner.
 *
 * The library is free for all purposes without any express
 * guarantee it works.
 */
#include "tomcrypt_private.h"

/**
  @file crypt_prng_descriptor.c
  Stores the PRNG descriptors, Tom St Denis
*/
struct ltc_prng_descriptor prng_descriptor[TAB_SIZE] = {
{ NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL }
};

LTC_MUTEX_GLOBAL(ltc_prng_mutex)


/* ref:         HEAD -> develop */
/* git commit:  a1f6312416ef6cd183ee62db58b640dc2d7ec1f4 */
/* commit time: 2019-09-04 13:44:47 +0200 */
