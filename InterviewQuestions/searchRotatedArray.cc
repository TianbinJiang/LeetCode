/*
	Suppose a sorted array is rotated at some pivot unknown to you beforehand.
	You are given a value to search. If found in the array return its index
	otherwise return -1. Assume that the array has no duplicates
*/
#include <stdio.h>
using namespace std;

int searchRotatedArray(int array[], int n, int target) {
	if(n < 0) return -1;
	int left = 0;
	int right = n - 1;
	while(left <= right) {
		int mid = (right + left) / 2;
		if(array[mid] == target) return mid;
		if(array[mid] < target) {
				if(target > array[mid] && target <= array[right]) {
					left = mid + 1;
				} else {
					right = mid - 1;
				}
		}
		else if(array[mid] > target) {
			if(target < array[mid] && target >= array[left]) {
				right = mid - 1;
			} else {
				left = mid + 1;
			}
		} else {
			--right;
		}
	}
	return -1;
}

int main(void) {
	int array[] = {4, 5, 6, 7, 0, 1, 2};
	int position = searchRotatedArray(array, sizeof(array)/sizeof(array[0]), 4);
	printf("The searched position is %d\n", position);
}
