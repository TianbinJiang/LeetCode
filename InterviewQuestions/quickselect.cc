/* return kth smallest value, for k from 1 to len(array) */

/* Extra memory space implementation */
/* define three vectors: less, equal, greater */

#include <vector>
#include <stdio.h>
using namespace std;

int quick_select(vector<int> array, int k){
	if(array.size() == 1) {
		return array[0];
	}
	int len = array.size();
	int pivot = array[len - 1];
	vector<int> LessPart;
	vector<int> EqualPart;
	vector<int> GreaterPart;

	for(int i = 0; i < len; i ++) {
		if(array[i] < pivot) {
			LessPart.push_back(array[i]);
		} else if(array[i] == pivot) {
			EqualPart.push_back(array[i]);
		} else {
			GreaterPart.push_back(array[i]);
		}
	}
	if(k <= LessPart.size()) {
		return quick_select(LessPart, k);
	} else if(k <= LessPart.size()  + EqualPart.size()) {
		return pivot;
	} else {
		int j = k - LessPart.size() - EqualPart.size();
		return quick_select(GreaterPart, j);
	}
}

/* In place select sort -----*/

int partition(int array[], int left, int right){
	int pivot = array[right];
	while(left <= right) {
		while(left <= right && array[left] < pivot)
			left++;
		while(left <= right && pivot < array[right])
			right --;
		if(array[left] == array[right]) left ++;
		if(left <= right){
			swap(array[left], array[right]);
		}
	}
	return right;	
}

int quick_select(int array[], int p, int r, int k){
	if(p == r) return array[p];
	int j = partition(array, p, r);
	int length = j - p + 1;
	if(length == k) return array[j];
	else if(k < length) return quick_select(array, p, j - 1, k);
	else return quick_select(array, j + 1, r, k - length);
}

/*------TEST------*/

int main(void){
	int array[] = {2, 4, 5, 6, 1, 3, 5, 2};
	vector<int> testArray(array, array + sizeof(array)/sizeof(array[0]));
	int kthValue = quick_select(testArray, 3);
	printf("the kth smallest value is %d\n", kthValue);
}
