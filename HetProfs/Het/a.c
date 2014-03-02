#include<iostream>

int main(){
	int a[] = {1,3,4,5,2,5,7,8,10};
	int sum=0;

	for(int i=0;i<10; i++){
		sum = sum+a[i];
		if(i>3)
			break;
	}
}
