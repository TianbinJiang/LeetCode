/*
	Write a function to swap a number in place without temporary variables.
*/

#include <stdio.h>
using namespace std;

void swap(int *a ,int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

void swap_1(int &a, int &b){
	a = a ^ b;
	b = a ^ b;	
	a = a ^ b;
}

/*----TEST----*/

int main(void){
	int a = 2;
	int b = 3;
	swap(&a, &b);
	printf("%d, %d\n", a, b);
	swap_1(a, b);
	printf("%d, %d\n", a, b);
}
