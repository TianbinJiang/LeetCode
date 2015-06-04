/* Quick Sort */

#include <stdio.h>
#include <vector>
using namespace std;

void quicksort(vector<int> &array){
	if(array.size() < 2) return;

	vector<int> LessPart;
	vector<int> GreaterPart;
	vector<int> EqualPart;

	int pivot = array.back();

	while(!array.empty()) {
		int value = array.back();
		if(value < pivot) {
			LessPart.push_back(value);	
		} else if(value > pivot) {
			GreaterPart.push_back(value);
		} else {
			EqualPart.push_back(value);
		}
		array.pop_back();
	}

	quicksort(LessPart);
	quicksort(GreaterPart);
	
	while(!LessPart.empty()) {
		int value = LessPart.back();
		array.push_back(value);
		LessPart.pop_back();
	}
	while(!EqualPart.empty()){
		int value = EqualPart.back();
		array.push_back(value);
		EqualPart.pop_back();
	}
	while(!GreaterPart.empty()){
		int value = GreaterPart.back();
		array.push_back(value);
		GreaterPart.pop_back();
	}
}

/*-------Something Wrong above-- vector should changed into Queue----------*/


/* In place quick sort */
void swap(int *a, int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

void in_place(vector<int> &test, int a, int b){
	if(a >= b) return;
	int pivot = test[b];
	int left = a, right = b - 1;
	while(left <= right) {
		while(left <= right && test[left] < pivot)
			left += 1;
		while(left <= right && pivot < test[right])
			right -= 1;
		if(left <= right){
			swap(test[left], test[right]);
			left += 1;
			right -= 1;
		}
	}
	swap(test[left], test[b]);
	in_place(test, a, left - 1);
	in_place(test, left + 1, b);

}

/*---------TEST------------*/

int main(void) {
	int array[] = {3, 2, 1};
	vector<int> testArray(array, array + sizeof(array)/sizeof(array[0]));
	quicksort(testArray);
	//in_place(testArray, 0, 3);
	for(int i = 0; i < sizeof(array)/sizeof(array[0]); ++i)
		printf("%d,", testArray[i]);
	printf("\n");
}
