// Given a set of distinct integers, S, return all possible subsets

#include <stdio.h>
#include <algorithm>
#include <vector>
using namespace std;

void GenerateSubset(vector<int> &num, int begin, vector<int> &solution,
										vector< vector<int> > &results){
	if(begin >= num.size()) {
		results.push_back(solution);
	} else {
		solution.push_back(num[begin]);
		GenerateSubset(num, begin + 1, solution, results);
		solution.pop_back();
		GenerateSubset(num,begin + 1, solution, results);
	}
}

vector< vector<int> > subsets(vector<int> &num) {
	vector< vector<int> > results;
	vector<int> solution;
	if(num.size() == 0) return results;
	GenerateSubset(num, 0, solution, results);
	return results;
}


/* -------- Test ----------*/
void PrintVector(vector< vector<int> > &num){
	for(int i = 0; i < num.size(); ++i) {
		for(int j = 0; j < num[i].size(); ++j) {
			printf("%d", num[i][j]);
		}
		printf("\n");
	}
}


int main(void){
	int tmp[] = {1, 2, 3};
	vector<int> testVector(tmp, tmp + 3);
	vector< vector<int> > result;
	result = subsets(testVector);
	PrintVector(result);
}
