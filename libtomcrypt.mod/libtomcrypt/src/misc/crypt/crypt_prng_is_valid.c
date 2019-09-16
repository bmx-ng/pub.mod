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
  @file crypt_prng_is_valid.c
  Determine if PRNG is valid, Tom St Denis
*/

/*
   Test if a PRNG index is valid
   @param idx   The index of the PRNG to search for
   @return CRYPT_OK if valid
*/
int prng_is_valid(int idx)
{
   LTC_MUTEX_LOCK(&ltc_prng_mutex);
   if (idx < 0 || idx >= TAB_SIZE || prng_descriptor[idx].name == NULL) {
      LTC_MUTEX_UNLOCK(&ltc_prng_mutex);
      return CRYPT_INVALID_PRNG;
   }
   LTC_MUTEX_UNLOCK(&ltc_prng_mutex);
   return CRYPT_OK;
}

/* ref:         HEAD -> develop */
/* git commit:  a1f6312416ef6cd183ee62db58b640dc2d7ec1f4 */
/* commit time: 2019-09-04 13:44:47 +0200 */
