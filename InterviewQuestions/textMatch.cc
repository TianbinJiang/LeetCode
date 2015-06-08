/* Text match */
/* Tree methods: Brute Force, Boyer-Moore and KMP */
#include <stdio.h>
#include <string>
#include <vector>
using namespace std;

/* Brute Force Method */
int find_brute(string Text, string Pattern){
	int n = Text.size();
	int m = Pattern.size();
	for(int i = 0; i < n - m + 1; i++){
		int k = 0;
		while(k < m && Text[i + k] == Pattern[k])
			k += 1;
		if(k == m)
			return i;
	}
	return -1;
}

/* Boyer-Moore algorithm */

/* get the last index*/
vector<int> Last(string Pattern){
	vector<int> result(Pattern.size());
	for(int i = 0; i < Pattern.size(); ++i)
		result[Pattern[i]] = i;
	return result;
}

int min(int a, int b){
	if(a < b) return a;
	else return b;
}

int find_boyer_moore(string Text, string Pattern){
	int n = Text.size();
	int m = Pattern.size();
	if(m == 0) return 0;
	vector<int> PatternIndex = Last(Pattern);
	int i = m - 1;
	int k = m - 1;
	while(i < n){
		/* start comparing from the end of Pattern string*/
		if(Text[i] == Pattern[k]){
				if(k == 0) {
					return i;
				} else{
					i = i - 1;
					k = k - 1;
				}
			} else {
				/* Use the Last function to find the next start index */
				//ALERT ! Seems here is a bug, what if there is no match in PatternIndex */
				int j = PatternIndex[Text[i]];
				i += m - min(k, j + 1);
				k = m - 1;
			}
	}
	return -1;
}

/* ---------TEST-------*/

int main(void){
	string Text = "jiji9ijkjkljkljklfsfghsdfhsfdsfhfhy";
	string Pattern = "klj";
	//int found_index = find_brute(Text, Pattern);
	int found_index = find_boyer_moore(Text, Pattern);
	printf("found_index:%d", found_index);
}
