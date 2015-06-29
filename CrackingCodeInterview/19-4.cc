/*
	Write a method which finds the maximum of two numbers. You should not sure if-else
	or any other comarison operator.
*/
#include <stdio.h>
using namespace std;
int Maximum(int a, int b){
	return ((a -  b) >> 31) & 0x1 ? b : a;
}

/*---TEST----*/

int main(void){
	int a = 2;
	int b = 16;
	printf("max: %d\n", Maximum(a, b));
}
