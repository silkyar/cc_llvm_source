#include <stdio.h>
void incr_a(int*);

int main(){
 	int b =20;
	int *a = &b;
	incr_a(a);
	printf("%d", b);
}

void incr_a(int *a){
	*a = 30;
}
