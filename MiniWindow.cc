// Minimum window Substring
// Given a string S and a string T, find the minimum window in S
// which will contain all the characters in T in complexity O(n)

#include <cstring>
#include <stdio.h>
#include <iostream>
#include <climits>
using namespace std;

int min(int a, int b){
	return a > b ? b : a;
}

int MiniWindow(string s, string t) {
	int needed[256] = {0}; // map the characters in T;
	int found[256] = {0}; // map the characters in S;
	int count = 0; // count to the size of T;
	int minlen = INT_MAX;
	int tlen = t.size();
	for(int i = 0; i < tlen; ++i)
		needed[t[i]] ++;
	int begin = 0, end = 0;
	for(; end < s.size(); ++end) {
		char tmp = s[end];
		if(needed[tmp] == 0) continue;
		if(++found[tmp <= needed[tmp]])
			count++;
		if(count == t.size()) {
			// Using two pointers
			while(needed[s[begin]] == 0 || found[s[begin]] > needed[s[begin]]) {
				if(found[s[begin]] > needed[s[begin]])
						found[s[begin]]--;
				begin++;
			}
		}
	return minlen = min(minlen, end- begin + 1);
	}
}

int main(void) {
	string s = "acbdacibdeafag";
	string t = "ab";
	printf("%d\n", MiniWindow(s,t));
}
