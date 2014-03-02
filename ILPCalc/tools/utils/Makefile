# Don't do -D__inline__= as this bones sys/stat.h
CFLAGS=-DPRINT_CONFLICTS -DPRIEPSET -D_GNU_SOURCE -D_XOPEN_SOURCE=600 -Wall -pedantic -Wno-long-long -g -O0 -I. -fpermissive
CCFLAGS=-D_XOPEN_SOURCE=600 -Wall -pedantic -Wno-long-long -g -O1 -I. -fpermissive

%.o : %.cxx
	g++  -m32 -c $(CCFLAGS) -o $@ $<

%.o : %.c
	gcc  -m32 -c $(CCFLAGS) -o $@ $<

%.o : %.S
	gcc  -m32 -c $(CFLAGS) -o $@ $<

all: MemoryMap.o debug_new.o utils.o

clean:
	rm -rf *.o
 
