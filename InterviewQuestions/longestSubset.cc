// Find the length of longest substring without repeating characters.

#include <stdio.h>
#include <string>

using namespace std;

int max(int a, int b){
	return a > b ? a: b;
}

int lengthOfSubstring(string s) {
	bool map[256] = {false};
	int i = 0, j = 0;
	int len = s.size();
	int maxlen = 0;
	while(i < len) {
		if(!map[s[i]]){
			map[s[i++]] = true;
		} else {
			maxlen = max((i - j), maxlen);
			while(s[i] != s[j]) {
				map[s[j]] = false;
				++j;
			}
			++i;
			++j;
		}
	}
	return max((i - j), maxlen);
}

/* ------TEST --------*/

int main(void) {
	string s = "aaaa";
	int len = lengthOfSubstring(s);
	printf("the maxlen is %d\n", len);
}
