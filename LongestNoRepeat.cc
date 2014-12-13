// Find the longest substring without repeating characters

#include <stdio.h>
#include <string>
#include <climits>

using namespace std;
int LengthOfLongestSubString(string s) {
	int map[256] = {0};
	int i = 0, j = 0;
	int maxLen = INT_MIN;
	int len = s.size();
	while(i < len) {
		if(map[s[i]] == 0) {
			map[s[i]]++;
			++i;
		} else {
			maxLen = max(maxLen, i - j);
			while(s[i] != s[j]) {
				if(map[s[j]]) {
					map[s[j]]--;
					++j;
				}
			}
			++i;
			++j;
		}
	}
	return max(maxLen, i - j);
}

//Test
int main(void) {
	string s1 = "aaa";
	string s2 = "taaaaa";
	string s3 = "abcdef";
	string s4 = ""; // empty string
	printf("s1: %d\n", LengthOfLongestSubString(s1));
	printf("s2: %d\n", LengthOfLongestSubString(s2));
	printf("s3: %d\n", LengthOfLongestSubString(s3));
	printf("s4: %d\n", LengthOfLongestSubString(s4));
}
