
#include "pub.mod/libffi.mod/include/win32/fficonfig.h"
#include "pub.mod/libffi.mod/include/ffi.h"

#include <stdio.h>
#include "brl.mod/blitz.mod/blitz.h"

void test(void * func) {
	ffi_cif cif;

	ffi_type* rtype = &ffi_type_sint32;
	ffi_type* atypes[] = {&ffi_type_sint32};
	ffi_status status = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 1, rtype, atypes);
	printf("cif status: %d\n", status);

	int r = 0;
	void* rvalue = &r;
	int a0 = 3;
	void* avalues[] = {&a0};
	ffi_call(&cif, func, rvalue, avalues);
	printf("result = %d\n", r);
	
	fflush(stdout);
}

void testAdd(void * func) {
	ffi_cif cif;
	ffi_type* rtype = &ffi_type_sint32;
	ffi_type* atypes[] = {&ffi_type_sint32, &ffi_type_sint32};
	ffi_status status = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 2, rtype, atypes);
	printf("cif status: %d\n", status);
	
	int r = 0;
	void* rvalue = &r;
	int a0 = 3;
	int a1 = 5;
	void* avalues[] = {&a0, &a1};
	ffi_call(&cif, func, rvalue, avalues);
	printf("result = %d\n", r);
	
	fflush(stdout);
}

struct stest {
	int a;
	BBString * b;
	int c;
};

void testStruct(void * func, BBString * txt) {

	ffi_type stesttype;
	stesttype.size = 0;
	stesttype.alignment = 0;
	stesttype.type = FFI_TYPE_STRUCT;
	ffi_type* stesttypeelements[4];
	stesttype.elements = &stesttypeelements;
	stesttypeelements[0] = &ffi_type_sint32;
	stesttypeelements[1] = &ffi_type_pointer;
	stesttypeelements[2] = &ffi_type_sint32;
	stesttypeelements[3] = NULL;
	
	ffi_cif cif;
	ffi_type* rtype = &stesttype;
	ffi_type* atypes[] = {&stesttype};
	ffi_status status = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 1, rtype, atypes);
	printf("cif status: %d\n", status);
	
	struct stest r;
	struct stest a0;
	a0.a = 3;
	a0.b = txt;
	a0.c = 3;

	void* rvalue = &r;
	void* avalues[] = {&a0};
	printf("s=%d,a=%d\n", stesttype.size,stesttype.alignment);
	fflush(stdout);

	ffi_call(&cif, func, rvalue, avalues);
	
	printf("a = %d, c = %d\n", r.a, r.c);
	
	fflush(stdout);
}