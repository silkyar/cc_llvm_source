#include<stdio.h>

int main(){
	int a =1, b=3, c=10;

	if(a==1){
		printf("%d",a);
		if(b==3 && c==10)
			printf("%d %d", c, b);
		else
			printf("hello");
	}
	else
		return 1;

	return 0;
	

}
