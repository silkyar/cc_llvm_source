#include<stdio.h>
#include "llvm/Analysis/ProfileInfoTypes.h"
#include "llvm/Support/DataTypes.h"
#include <sys/types.h>
#include "llvm/Analysis/ProfileDataTypes.h" 

#if !defined(_MSC_VER) && !defined(__MINGW32__)
#include <unistd.h>
#else
#include <io.h>
#endif
#include <string.h>
#include <stdlib.h>

void cacheCounter(unsigned a){
int  b=10;
printf("hello\n");
fprintf(stderr,"abc\n");
return;
}
