/*
Write a method to decide if two strings are anagrams or not.
anagrams means the two strings has the same counts of invidual
characters.
*/
#include <stdio.h>
#include <string>
using namespace std;

bool AnagramCheck(string S, string T){
	if(S.size() != T.size()) return false;
	int map[256] = {0};
	for(int i = 0, j = 0; j < T.size() && i < S.size(); ++i, ++j){
		map[(int)S[i]]++;
		map[(int)T[j]]--;
	}
	for(int k = 0; k < 256; ++k){
		if(map[k] != 0) return false;
	}
	return true;
}
/* Need to be optimized */

/*-----TEST----*/

