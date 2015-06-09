/* This problem is a question using typical dynamic programming*/
/* Get the longest common string */

#include <stdio.h>
#include <vector>
#include <string>
using namespace std;

int max(int a, int b){
	return a >= b ? a : b;
}

vector< vector<int> > LCS(string Text, string Pattern){
	vector< vector<int> > result;
	for(int i = 0; i <= Text.size(); ++i){
		vector<int> row(Pattern.size() + 1);
		result.push_back(row);
	}
	int n = Text.size();
	int m = Pattern.size();
	for(int j = 0; j < n; ++j){
		for(int k = 0; k < m; ++k){
			if(Text[j] == Pattern[k]){
				result[j + 1][k + 1] = result[j][k] + 1;
			} else {
				result[j + 1][k + 1] = max(result[j + 1][k], result[j][k+1]);
			}
		}
	}
	return result;
}

vector<char> LCS_solution(string Text, string Pattern, vector< vector<int> > result) {
	vector<char> solution(Text.size());
	int j = Text.size();
	int k = Pattern.size();
	while(result[j][k] > 0){
		if(Text[j - 1] == Pattern[k - 1]) {
			solution.push_back(Text[j - 1]);
			j -= 1;
			k -= 1;
		} else if(result[j - 1][k] >= result[j][k - 1]){
			j -= 1;
		}else {
			k -= 1;
		}
	}
	return solution;
}

void PrintVector(vector<char> solution){
	int len = solution.size();
	for(int j = len - 1; j >= 0; --j){
		if(solution[j] != 0)
			printf("%c,",solution[j]);
	}
	printf("\n");
}

/*-----TEST----*/

int main(void){
	string Text = "skullandbones";
	string Pattern = "lullabybabies";
	vector< vector<int> > result = LCS(Text, Pattern);
	vector<char> solution = LCS_solution(Text, Pattern, result);
	PrintVector(solution);
}
