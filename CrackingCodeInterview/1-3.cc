/* 
	Design an algorithm and write code to remove the duplicates
	characters in a string without using any additional buffer.
	NOTE: one or two additional variable are fine. An extra copy
	of the array is not.
*/

#include <string>
#include <stdio.h>
using namespace std;

// Method 1: if using additioan datastructure is fine.
// Time complexity O(n), space O(n)
void RemoveDuplicates(string &S){
	if(S.size() <= 1) return;
	bool map[256] = {false};
	// Use two pointers, one to the head, one moving to the tail
	int i = 0, j = 0;
	while(j < S.size()){
		if(!map[S[j]]){
			map[S[j]] = true;
			S[i++] = S[j];
		}
		++j;
	}
	S[i] = '\0';
}

// Method 2: No additional variable allowed. One or two is fine.
// this method doesn't cover capital characters and spaces etc.
// time compexity O(n), space O(1)
void RemoveDuplicates_1(string &S){
	if(S.size() <= 1) return;
	int checker = 0;
	int i = 0, j = 0;
	while(j < S.size()){
		if((checker & (1 << (int)S[j]))) ++j;
		else {
			checker |= 1 << (int)S[j];
			S[i++] = S[j++];
		}
	}
	S[i] = '\0';
}

// Method 3: two pointers.
// Time complexity O(n2)

void RemoveDuplicates(string &S){
	int len = S.size();
	if(len <= 1) return;
	int tail = 1;
	for(int i = 1; i < len; ++i){
		for(int j = 0; j < tail; j++){
			if(S[i] == S[j]) break;
		}
		if(j == tail){
			S[tail] = S[i];
		}
	}
	S[tail] = '\0';
}

/*-----TEST-------*/

int main(void){
	string test = "abcdeaicb";
	printf("original: %s\n", test.c_str());
	// Test cases should cover: empty string, string with duplicates
	// string without duplciates
	RemoveDuplicates_1(test);
	printf("no duplicates: %s\n", test.c_str());
}
