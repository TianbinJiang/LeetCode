/*
	You are given an array of integers (both positive and negative). Find the continuous sequence with the largest sum. Return the sum
	example: {2, -8, 3, -2, 4, -10}
	output 5 {3, -2, 4}
*/

#include <stdio.h>
#include <vector>
using namespace std;

// Method 1: two loop to decide the largest sum
int MaxSubset(int start, vector<int> input){
	int max = input[start];
	int sum = 0;
	int i = 0;
	while(i <= start){
		sum = sum + input[i];
		if(sum >= max){
			max = sum;
		// when sum is small then 0, the maxsum will stop increasing. We should start from a new index
		} else if(sum < 0){
			sum = 0;
		}
		i++;
	}
	return max;
}


int LargestSum(vector<int> input){
	int max = MaxSubset(input.size() - 1, input);
	return max;
}

/*----TEST---*/
int main(void){
	int input[] = {2, -8, 3, -2, 4, -10};
	vector<int> test(input, input+ sizeof(input)/sizeof(input[0]));
	int max = LargestSum(test);
	printf("the max value is : %d\n", max);
}
