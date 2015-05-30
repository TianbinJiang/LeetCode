// Remove Duplicates from sorted array

#include <stdio.h>
#include <vector>

int removeDuplicates(int A[], int n) {
	int i = 0;
	if(n <= 0) return n;
	for(int j = 0; j < n; ++j) {
		if(A[i] != A[j]){
			A[++i] = A[j];
		}
	}
	return i + 1;
}

/*------------TEST---------*/

int main(void) {
	int array[] = {1, 1, 2, 2};
	int len = removeDuplicates(array, sizeof(array)/sizeof(array[0]));
	for(int i = 0; i < len; ++i) {
		printf("%d", array[i]);
	}
	printf("\n");
}
