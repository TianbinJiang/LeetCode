// Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases. 

#include <string>
#include <stdio.h>
using namespace std;

bool isAlpha(char a) {
	if((a >= 'a' && a <= 'z') || (a >= 'A' && a <= 'Z' ))
		return true;
	else return false;
}

int abs(int a) {
	return a > 0? a : -a;
}

bool isPalindrome(string S) {
	int front = 0;
	int end = S.size() - 1;
	while(front < end) {
		char front_c = S[front];
		char end_c = S[end];
		if(isAlpha(front_c) && isAlpha(end_c)) {
			if(front_c == end_c || abs(front_c - end_c) == 32) {
				++front;
				--end;
			} else 
				return false;
		}
		if(!isAlpha(front_c))
			++front;
		if(!isAlpha(end_c))
			--end;
	}
	return true;
}

int main(void) {
	string s = "thisisis.a. sisisiht";
	string s1 = "isisis.a. sisisiht";
	if(isPalindrome(s))
		printf("string s is palindrome\n");
	if(isPalindrome(s1))
		printf("string s1 is palindrome\n");
	else
		printf("string s1 is not palindrome\n");
}
