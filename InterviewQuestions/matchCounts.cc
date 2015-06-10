/* Implement count method of Python str class report
   the maximum number of overlapping occurances of a
   pattern within a string. For example:
   the call "abababa".count('aba') returns 2 not 3
*/

#include <stdio.h>
#include <vector>
#include <string>
using namespace std;

/* Brute Force method*/

int RepeatNumbers(string Text, string Pattern){
	int n = Text.size();
	int m = Pattern.size();
	int count  = 0;
	int i = 0;
	while(i < n - m + 1) {
		int k = 0;
		while(k < m && Text[i + k] == Pattern[k]) {
			k++;
		}
		if(k == m){
			count++;
			i += m - 1;
		}
		i++;
	}
	return count;
}

/*Boyer-Morre method */
vector<int> last(string Pattern){
	vector<int> result(Pattern.size());
	for(int i = 0; i < Pattern.size(); ++i)
		result[Pattern[i]] = i;
	return result;
}

int min(int a, int b){
	return a < b ? a : b;
}

int RepeatNumbers_BoyerMorre(string Text, string Pattern) {
	int n = Text.size();
	int m = Pattern.size();
	vector<int> PatternIndex = last(Pattern);
	int i = m - 1, k = m - 1;
	int count = 0;
	while(i < n){
		if(Text[i] == Pattern[k]){
			if(k == 0) {
				count++;
				i  += m; // end one round, i goes for another round.
			} else {
				--i;
				--k;
			}
		} else {
			int j = PatternIndex[Text[i]];
			i += m - min(k, j + 1);
			k = m - 1;
		}
	}
	return count;
}

/* Boyer-Morre Method Ends*/

/* Knuth-Morris-Pratt (KMP) method*/

vector<int> compute_kmp_fail(string Pattern){
	int m = Pattern.size();
	vector<int> fail(m);
	int j = 1, k = 0;
	while(j < m){
		if(Pattern[j] == Pattern[k]){
			fail[j] = k + 1;
			k ++;
			j ++;
		}else if(k > 0){
			k = fail[k - 1];
		} else {
			j ++;
		}
	}
	return fail;
}

int RepeatNumbers_KMP(string Text, string Pattern){
	int n = Text.size(), m = Pattern.size();
	if(m == 0) return 0;
	int j = 0, k = 0;
	int count = 0;
	vector<int> fail = compute_kmp_fail(Pattern);
	while(j < n) {
		if(Text[j] == Pattern[k]){
			if(k == m - 1){
				count++;
				j ++;
				k = 0;
				continue;
			}
			j ++;
			k ++;
		} else if(k > 0){
			k = fail[k - 1];
		} else {
			j ++;
		}
	}
	return count;
}

/* KMP Method Ends */

/*----ALL---TEST---PASS-----*/

int main(void){
	string Text = "abababa";
	string Pattern = "aba";
	//int count = RepeatNumbers(Text, Pattern);
	//int count = RepeatNumbers_BoyerMorre(Text, Pattern);
	int count = RepeatNumbers_KMP(Text, Pattern);
	printf("repeat times: %d", count);
	printf("\n");
}
