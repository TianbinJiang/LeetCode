/*
	Write a function that adds two numbers. You should not use + or any arithmetic operators.
*/

// Got this question in Facebook interview. The interviewer not only ask for recursion method but also iteration method.
// It is actually pretty simple.
// A ^ B equals to A + B without flag
// (A & B) << 1 equals to A + B with only flag
// We only need to consistantly add the flag to the sum. 


#include <stdio.h>
using namespace std;

// Recursion method
int Add(int a, int b){
	if(b == 0) return a;
	int sum = a ^ b;
	int carry = (a & b) << 1;
	return Add(sum, carry);
}

// Iteration Method
int Add_1(int a, int b){
	int sum = a ^ b;
	int carray = (a & b) << 1;
	while(carray){
		int tmp = sum;
		sum = tmp ^ carray;
		carray = (tmp & carray) << 1;
	}
	return sum;
}

/*---TEST----*/
int main(void){
	int a = 10;
	int b = 12;
	printf("Sum is %d\n", Add_1(a, b));
}
