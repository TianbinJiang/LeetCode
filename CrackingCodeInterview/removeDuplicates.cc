#include <stdio.h>
#include <vector>
#include <unordered_map>
using namespace std;

int removeDuplicates(vector<int>& nums){
	int len = nums.size();
	if(len <= 1) return len;
	unordered_map<int, int> data;
	int i = 0, j = 0;
	while(j < len){
		if(data.find(nums[j]) == data.end()){
			nums[i] = nums[j];
			i++;
			j++;
			data[nums[j]] = 1;
		} else if(data[nums[j]] == 1){
			nums[i] = nums[j];
			i++;
			j++;
			data[nums[j]]++;
		} else if(data[nums[j]] == 2){
			j++;
		}
	}
	return i;
}

int main(void){
	int test[] = {1,1,1,2,2,3};
	vector<int> data(test, test +sizeof(test)/sizeof(int));
	int index = removeDuplicates(data);
	for(int i = 0; i < index; ++i){
		printf("%d ", data[i]);
	}
}
