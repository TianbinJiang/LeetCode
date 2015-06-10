/*
	Say that a pattern P of length m is a circular string
	of a text T of length n > m if P is (normal) string of T
	, or if P is equal to the concatenation of a suffix of T
	and prefix of T, that is, if there is an index 0 <= k < m,
	such that P = T[n - m + k : n] + T[0 : k].
	Give an O(m + n) time algorithm for determining whether P
	is a circular substring of T.

*/
#include <stdio.h>
#include <vector>
#include <string>
using namespace std;

/* Brute Force Method takes O(n * m)*/

bool Circular_Check(string Text, string Pattern){
	int n = Text.size();
	int m = Pattern.size();
	/* substring check */
	
	for(int i = 0; i < n - m + 1; ++i){
		int k = 0;
		while(k < m && Text[i + k] == Pattern[k]) {
			++k;
			if(k == m) return true;
		}
	}

	/* suffix and prefix check */
	int s = n - 1;
	while(s > 0){
		int prefix = 0, index = 0;
		int suffix = s;
		while(suffix < n && index < m){
			if(Text[suffix] == Pattern[index]){
				suffix++;
				index++;
			} else break;
		}
		while(index < m){
			if(Text[prefix] == Pattern[index]){
				prefix++;
				index++;
			} else break;
		}
		if(index == m){
			return true;
		}
		s--;
	}
	return false;
}

/* ------TEST--------*/
int main(void){
	string Text = "abcdefgd";
	string Pattern_1 = "gdab";
	string Pattern_2 = "abc";
	bool test = Circular_Check(Text, Pattern_2);
	printf("%d\n", test);
}
