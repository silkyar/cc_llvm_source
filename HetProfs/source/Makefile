# Don't do -D__inline__= as this bones sys/stat.h
CFLAGS=-D_GNU_SOURCE -D_XOPEN_SOURCE=600 -c -Wall -pedantic -Wno-long-long -g -O0 -I.
cacheSim.o: cacheSim.cpp
	clang $(CFLAGS) -o $@ $<

all:  cacheSim.o

clean:
	rm -rf *.o
