#include<stdio.h>

extern void cacheCounter(unsigned a);
int main(){
	unsigned a = 10;
	cacheCounter(a);

}
