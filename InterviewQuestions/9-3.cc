/*
	Given a sorted array of n integers that has been rotated an unknown number of
	times, give an O(lgn) algorithm that finds an element in the array. You may
	assume that the array was originally sorted in increasing order.
	input: find 5 in array(15, 16, 19, 20, 25, 1, 3, 4, 5, 6, 10, 14)
	output: 8 (the index of 5 in the array)
*/
#include <stdio.h>
#include <vector>
using namespace std;
int findRotatedArray(vector<int> &array, int target){
	int len = array.size();
	if(len <= 0) return -1;
	int high = len - 1;
	int low = 0;
	// pay attention to the equal here.
	while(low <= high){
		int mid = low + (high - low) / 2;
		if(array[mid] == target) return mid;
		if(array[mid] > array[high]){
			// pay attention to the equal here.
			if(target >= array[low] && target < array[mid])
				high = mid - 1;
			else
				low = mid + 1;
		} else if(array[mid] < array[high]){
			// pay attention to the equal here.
			if(target > array[mid] && target <= array[high]){
				low = mid + 1;
			} else {
				high = mid - 1;
			}
		} else {
			--high;
		}
	}
	return -1;
}

/*----TEST----*/

int main(void){
	int array[] = {15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14};
	vector<int> test(array, array + sizeof(array)/sizeof(array[0]));
	int found = findRotatedArray(test, 16);
	printf("the found index is: %d\n", found);
}
