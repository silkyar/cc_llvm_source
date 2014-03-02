CC=clang
OPTIONS=-fvisibility-inlines-hidden -O2

CFLAGS = -emit-llvm -target arm-none-linux-gnueabi -march=armeabi-v7a -I /home/silkyar/Workspace/Benchmarks/benchspec/CPU2006/403.gcc/src -I /home/silkyar/Workspace/CrossCompiler/arm-2011.03/arm-none-linux-gnueabi/libc/usr/include -I /home/silkyar/Workspace/CrossCompiler/arm-2011.03/arm-none-linux-gnueabi/include/c++/4.5.2  -pedantic -Wall -Wextra -DSPEC_CPU -DNDEBUG -Wenum-conversion -O2 -fno-strict-aliasing -DSPEC_CPU_LP64
SOURCES = $(wildcard *.c) 
OBJECTS = $(SOURCES:.c=.bc)

all: $(OBJECTS)

%.bc: %.c
	$(CC) $(OPTIONS) -c $(CFLAGS) $< -o $@

clean:
	rm *.bc


# llvm-link *.bc -o test_code.bc
# llc test_code.bc -o test_code.s
# arm-none-linux-gnueabi-gcc -g test_code.s -o test_code 
# arm-none-linux-gnueabi-objdump -DS test_code > test_code_dump
