
#ifndef PUB_MACOS_MACOS_H
#define PUB_MACOS_MACOS_H

#include <brl.mod/blitz.mod/blitz.h>
#include <Foundation/Foundation.h>

#include <errno.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/sysctl.h>

#include "NSProcessInfo_PECocoaBackports.h"

int is_pid_native( pid_t pid );

BBString *bbStringFromNSString( NSString *s );

NSString *NSStringFromBBString( BBString *s );

void NSOSVersion(int * major, int * minor, int * patch);

#endif
