/*
	Let T be a text string of length n. Describe an O(N)
	method for finding the longest prefix of T that is
	a substring of the reversal of T.
	PAY ATTENTION: it is substring, not suffix.
*/

#include <stdio.h>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

/* Use KMP to check the substring */
vector<int> compile_kmp_fail(string Pattern){
	vector<int> fail(Pattern.size());
	int n = Pattern.size();
	int j = 1, k = 0;
	while(j < n){
		if(Pattern[j] == Pattern[k]){
			fail[j] = k + 1;
			++j;
			++k;
		} else if(k > 0) {
			k = fail[k - 1];
		} else {
			++j;
		}
	}
	return fail;
}

bool checkSubstring(string Text, string Pattern){
	int m = Pattern.size();
	int n = Text.size();
	vector<int> fail = compile_kmp_fail(Pattern);
	int j = 0, k = 0;
	while(j < n){
		if(Text[j] == Pattern[k]){
			if(k == m - 1){
				return true;
			}
			++j;
			++k;
		} else if(k > 0){
			k = fail[k - 1];
		} else {
			++j;
		}
	}
	return false;
}

/* KMP to check substring ends */

int max(int a, int b){
	return a > b ? a : b;
}

int LongestPrefixinReverse(string s){
	string rev = s;
	reverse(rev.begin(), rev.end());
	int maxlen = 0, i = 0;
	while(i < s.size()){
		string sub = s.substr(0, i);
		if(checkSubstring(rev, sub)){
			maxlen = max(maxlen, i);	
		}
		++i;
	}
	return maxlen;
}

/*-----TEST-----*/

int main(void){
	string s = "abcefghigdcba";
	printf("%s\n",s.c_str());
	string rev = s;
	reverse(rev.begin(), rev.end());
	printf("%s\n",rev.c_str());
	
	int len = LongestPrefixinReverse(s);
	printf("The longest prefix in reverse string is : %d\n", len);
}
