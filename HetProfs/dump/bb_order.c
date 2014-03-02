#include<stdio.h>
void let_us_print(int);

int main() {
	int num = 10;
	int i;
	for (i = 0; i < 20; i++) {
		if(i%2 == 0) {
			let_us_print(i);
		}
	}

	return 0;
}

void let_us_print(int i) {
	printf("%d \n", i);
	return;
}
