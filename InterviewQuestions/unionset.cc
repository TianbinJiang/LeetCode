/* suppose we are given two n-element sorted sequences A and B
   each with distinct elements, but potentially some elements
   that are in both sequences. Describe an O(n)-time method for
   computing a sequence representing the union A U B (with no-duplicates)
	 are a sorted sequence.
*/

#include <stdio.h>
#include <vector>
using namespace std;

void UnionSets(vector<int> &A, vector<int> &B){
	//if(A.size() == 0) return B;
	//if(B.size() == 0) return A;
	int A_len = A.size();
	int B_len = B.size();
	int A_left = 0, B_left = 0;
	vector<int> result;
	while(A_left < A_len && B_left < B_len){
		if(A[A_left] < B[B_left]) {
			result.push_back(A[A_left]);
			A_left += 1;
		} else if(A[A_left] > B[B_left]){
			result.push_back(B[B_left]);
			B_left += 1;
		} else {
			result.push_back(A[A_left]);
			A_left += 1;
			B_left += 1;
		}
	}
	while(A_left < A_len) {
		result.push_back(A[A_left]);
		A_left += 1;
	}
	while(B_left < B_len){
		result.push_back(B[B_left]);
		B_left += 1;
	}
	for(int i = 0; i < result.size(); i++){
		printf("%d,", result[i]);
	}
	printf("\n");
}

/*------TEST---------*/
int main(void){
	int A[] = {1, 3, 4};
	int B[] = {1, 6, 8, 10};
	vector<int> ArrayA(A, A + sizeof(A)/sizeof(A[0]));
	vector<int> ArrayB(B, B + sizeof(B)/sizeof(B[0]));
	UnionSets(ArrayA, ArrayB);
}
