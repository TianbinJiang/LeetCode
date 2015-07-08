// Booyer-Moore Algorithm
#include <stdio.h>
#include <algorithm>
#include <vector>
using namespace std;

// Element appears more than n / 2;
int majorityElements(vector<int> &nums){
	int len = nums.size();
	int count = 0;
	int a = 0;
	for(int i = 0; i < len; ++i){
		if(count == 0 || nums[i] == a){
			++count;
			a = nums[i];
		} else {
			--count;
		}
	}
	count  = 0;
	for(int i = 0; i < len; ++i){
		if(nums[i] == a) count++;
	}
	if(count > len / 2) return a;
}

int main(void){
	vector<int> nums{1, 1, 2, 1, 3};
	int majority = majorityElements(nums);
	printf("the majority element is: %d\n", majority);
}
