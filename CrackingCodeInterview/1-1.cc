/*
	Implement an algorithm to determine if a string has
	all unique characters. what if you can not use additional
	data structures?
*/


#include <stdio.h>
#include <string>
using namespace std;

// Method 1, use a bool map[256], time complexity: O(n), space:O(n);
bool UniqueChars(string S){
	bool map[256] = {false};
	int len = S.size();
	if(len <= 1) return true;
	for(int i = 0; i < len; ++i){
		if(!map[S[i]]) map[S[i]] = true;
		else
			return false;
	}
	return true;
}

// Method 2, use bit vector. time complexity: O(n), space O(1)

bool UniqueChars_2(string S){
	int checker = 0;
	for(int i = 0; i < S.size(); ++i){
		if((checker & (1 << (int)S[i]))) return false;
		checker |= (1 << (int)S[i]);
	}
	return true;
}

// Method 3: we can use two pointers to looply check. Takes O(n2) time
// Method 4: pre-sort the string and linearly check. Take at least O(nlogn) time

/*-------TEST----------*/

int main(void){
	string T_0 = "abcde";
	string T_1 = "aba";
	string T_2 = "";
	string T_3 = "a";
	bool test0 = UniqueChars_2(T_0);
	bool test1 = UniqueChars_2(T_1);
	bool test2 = UniqueChars_2(T_2);
	bool test3 = UniqueChars_2(T_3);
	printf("test0: %d, test1: %d, test2: %d, test3: %d\n", test0, test1, test2, test3);
}

