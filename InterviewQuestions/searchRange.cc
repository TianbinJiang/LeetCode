/*
	Given a sorted array of integers, find the starting and
  ending position of a given  target value. If the target
  is not found in the array, return [-1, -1]
	for example:
  Given [5, 7, 7, 8, 8, 10] and target value is 8
	return [3, 4]
*/
#include <stdio.h>
using namespace std;

/* Linear Search, time complexity O(n) */

vector<int> SearchRange(int array[], int n, int target) {
	vector<int> result(2);
	int low = 0, high = n - 1;
	while(low < high) {
		int mid = (low + high) / 2;
		if(array[mid] < target)
			low = mid + 1;
		else if (array[mid] > target)
			high = mid - 1;
		else {
			int leftRange = mid;
			int rightRange = mid;
			while(leftRange >= low && rightRange <= high) {
				if(array[rightRange] == target){
					rightIndex = rightRange;
					rightRange++;
				}
				if(array[leftRange] == target) {
					leftIndex = leftRange;
					leftRange--;
				}
			}
			result[0] = leftIndex;
			result[1] = rightIndex;
			return result;
		}
	}
	result[0] = -1;
	result[1] = -1;
	return result;
}


// introduce a flag. if need the right index, set the findLeft == False
int searchRange(int array[], int begin, int end, int key, bool findLeft) {
	if(begin > end) return -1;
	int mid = (begin + end) / 2;
	if(array[mid] == key) {
		int pos = findLeft ? searchRange(array, begin, mid - 1, key ,findLeft) :
												 searchRange(array, mid + 1, end, key, findLeft);
		return pos == -1 ? mid : pos;
	} else if (array[mid] < key) {
		return searchRange(array, mid + 1, end, key, findLeft);
	} else {
		return searchRange(array, begin, mid - 1, key, findLeft);
	}
}

