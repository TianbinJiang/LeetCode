// Find which 3 numers sum equals to zeor. Input might have repeat numbers
#include <stdio.h>
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

vector< vector<int> > ThreeSum(vector<int> &input) {
	vector< vector<int> > result;
	int len = input.size();
	if(len < 3) return result;
	sort(input.begin(), input.end());
	for(int i = 0; i < len; ++i) {
		if(i >= 1 && (input[i - 1] == input[i]))
			continue;
		int start = i + 1;
		int end = len - 1;
		while(start - 1 >= i && (input[start - 1] == input[start]))
			start++;
		while(end + 1 < len && (input[end + 1] == input[end]))	
			end--;
		int sum = input[i] + input[start] + input[end];
		if(sum == 0) {
			vector<int> path;
			path.push_back(input[i]);
			path.push_back(input[start]);
			path.push_back(input[end]);
			result.push_back(path);
		}
		else if(sum > 0)
			end--;
		else
			start++;
	}
	return result;
}

//Test
int main(void) {
	int myInputs[] = {1, -1, -2, -3, 4, -6, 3, 5, -7};
	vector<int> input (myInputs, myInputs + sizeof(myInputs)/sizeof(int));
	vector< vector<int> >result = ThreeSum(input);
	for(int i = 0; i < result.size(); ++i) {
		for(int j = 0; j < result[i].size(); ++j)
			printf("%d ", result[i][j]);
	}
	printf("\n");
}
