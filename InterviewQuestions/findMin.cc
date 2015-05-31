/* A sorted array is rotated at some unknown point.
   fnd the minum element in it.
	 {5, 6, 1, 2, 3, 4}
   minum is 1
 
   {1, 2, 3, 4}
   minum is 1

	 {2, 1}
   minum is 1
*/

#include <stdio.h>
#include <algorithm>
using namespace std;

/* Method 1: linear search, time complexity is O(n) */
int search(int array[], int n) {
	int minimum = array[0];
	for(int j = 1; j < n; ++j) {
		minimum = min(array[j], minimum);
	}
	return minimum;
}

/* Method 2: Binary Search*/

int findMin(int array[], int low, int high) {
	if(high < low) return array[0];
	if(high == low) return array[low];
	int mid = low + (high - low) / 2;
	if(mid < high && array[mid + 1] < array[mid]) {
		return array[mid + 1];
	}
	if(mid > low && array[mid] < array[mid - 1])
		return array[mid];
	if(array[high] > array[mid])
		return findMin(array, low, mid - 1);
	return findMin(array, mid + 1, high);
}

/* If the array contains duplicates */

int findMin(int array[], int low, int high) {
	if(high < low) return array[0];
	if(high == low) return array[low];
	int mid = low + (high - low) / 2;
	if(mid < high && array[mid + 1] < array[mid])
		return array[mid + 1];
	if(mid > low && array[mid] < array[mid - 1])
		return array[mid];
	if(array[low] == array[mid] && array[mid] == array[high])
		return min(findMin(array, low, mid - 1), findMin(array, mid + 1, high));
	if(array[high] > array[mid])
		return findMin(array, low, mid - 1);
	return findMin(array, mid + 1, high);
}


/*--------TEST----------*/
int main(void) {
	int array[] = {4, 5, 6, 1, 2, 3};
	int minValue = search(array, sizeof(array)/sizeof(array[0]));
	printf("the minimum value is %d\n", minValue);
}
