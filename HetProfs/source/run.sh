#!/bin/sh
cd source
CFLAGS='-D_GNU_SOURCE -D_XOPEN_SOURCE=600 -c -Wall -pedantic -Wno-long-long -g -O0 -I/x/ext_students/silkyar/llvm/include'
clang -emit-llvm -c a.c -o a.bc
clang $CFLAGS -o hetprofiler.o cacheSim.cpp

opt -load /x/ext_students/silkyar/llvm/Debug+Asserts/lib/cacheProf.so -cacheProf a.bc>out.bc
llc out.bc -o out.s
g++ -o hetprof.exe out.s hetprofiler.o
./hetprof.exe

#clang++ -emit-llvm -c cacheSim.cpp -o cacheSim.bc
#clang -emit-llvm -c cacheSim.c -o cacheSim.bc
#llvm-link a.bc cacheSim.bc -o final.bc
#lli out.bc

