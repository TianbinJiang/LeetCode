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
		while(prefix < n && index < m){
			if(Text[prefix] == Pattern[index]){
				prefix++;
				index++;
			} else break;
		}
		// suffix to the end and the whole string matched.
		if(suffix == n && index == m){
			return true;
		}
		s--;
	}
	return false;
}

// Brute Force method time complexity is O(m * n) 

/* Since the question is asking for O(m + n) time complexity
   we can adapt KMP method here */

vector<int> compile_kmp_fail(string Pattern){
	vector<int> result(Pattern.size());
	int len = Pattern.size();
	int j = 1, k = 0;
	while(j < len){
		if(Pattern[j] == Pattern[k]){
			result[j] = k + 1;
			++j;
			++k;
		} else if(k > 0) {
			k = result[k - 1];
		} else {
			++j;
		}
	}
	return result;
}

bool CircularCheckKMP(string Text, string Pattern){
	vector<int> fail = compile_kmp_fail(Pattern);
	int n = Text.size();
	int m = Pattern.size();
	int j = 0, k = 0;
	while(j < n){
		if(Text[j] == Pattern[k]){
			if(k == m - 1) {
				return true;
			}
			if(j == n - 1) {
				j = 0;
				++k;
				while((k < m) && (Text[j] == Pattern[k])){
					++j;
					++k;
					}
					if(k == m) return true;
					else return false;
				}
			++k;
			++j;
			} else if(k > 0) {
			k = fail[k - 1];
		} else {
			j ++;
		}
	}
	return false;
}

/* ------TEST--------*/
int main(void){
	string Text = "abcdefgde";
	string Pattern_1 = "dei";
	string Pattern_2 = "abc";
	string Pattern_3 = "deab";
	bool test_0 = Circular_Check(Text, Pattern_1);
	bool test_5 = CircularCheckKMP(Text, Pattern_1);
	//bool test_5 = false;

	bool test_1 = Circular_Check(Text, Pattern_2);
	bool test_4 = CircularCheckKMP(Text, Pattern_2);

	bool test_2 = Circular_Check(Text, Pattern_3);
	bool test_3 = CircularCheckKMP(Text, Pattern_3);

	printf("test_0: %d, test_5: %d, test_1: %d, test_4: %d, test_2:%d, test_3: %d\n", 
				  test_0,     test_5,     test_1,     test_4,     test_2,    test_3);
}
