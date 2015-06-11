/*
	Describe an efficient algoithm  to find the longest
	palindrome that is a suffix of a string T of length n.
	recall that a palindrome is a string that is equal to
	its reversal. Check the running time complexities.
*/

#include <stdio.h>
#include <string>
#include <algorithm>
using namespace std;

bool checkPalindrome(string s, int start, int end) {
	if(start >= end) {
		return true;
	}
	return checkPalindrome(s, start + 1, end - 1) && s[start] == s[end];
}

int max(int a, int b){
	return a >= b ? a : b;
}

int LongestSuffixPalindrome(string s){
	int len = s.size();
	int i = 0;
	int maxlen = 0;
	while(i < len){
		string subs = s.substr(i, len - i);
		if(checkPalindrome(subs, 0, subs.size()-1)){
			maxlen = max(maxlen, len - i);
		}
		++i;
	}
	return maxlen;
}

/*----TEST----*/

int main(void){
	string s= "abjabba";
	bool check = checkPalindrome(s, 0, s.size() - 1);
	int len = LongestSuffixPalindrome(s);
	printf("%d\n", len);
}
