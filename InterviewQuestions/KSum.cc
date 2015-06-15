/*
Let three interger arrays. A, B and C, be given, each of size n.
Given an arbitrary integer K. Design O(n2logn) time algorithm to
determine if there exist numbers, a in A, b in B, and c in C such
that k = a + b + c
*/

#include <stdio.h>
#include <vector>
#include <algorithm>
using namespace std;


/* Original Brute Force takes O(n3)*/
bool kSum(int K, vector<int> A, vector<int> B, vector<int> C){
	int A_len = A.size();
	int B_len = B.size();
	int C_len = C.size();
	int i = 0, j = 0, k = 0;
	while(i < A_len){
		while(j < B_len) {
				while(k < C_len){
					int value = A[i] + B[j] + C[k];
					if(value == K){return true;}
					else ++k;
				}
				++j;
			}
		++i;
	}
	return false;
}

/* This question is a bit similar with 2Sum question and just need
   a bit change.
*/

bool kSum_2(int target, vector<int> A, vector<int> B, vector<int> C){
	sort(A.begin(), A.end());
	sort(B.begin(), B.end());
	int A_len = A.size();
	int B_len = B.size();
	int C_len = C.size();
	int i = 0, j = B_len - 1, k = 0;
	while(k < C_len){
		while(i < A_len && j >= 0) {
			if(A[i] + B[j] == target - C[k]){
				return true;
			} else if (A[i] + B[j] > target - C[k]) {
				j--; 
			} else {
				++i;
			}
		}
		++k;
	}
	return false;
}


/*------TEST-------*/

int main(void){
	int array[] = {1, 2, 3, 4, 5, 6, 7};
	vector<int> A(array, array + 3);
	vector<int> B(array, array + 3);
	vector<int> C(array, array + 4);
	bool found = kSum_2(8, A, B, C);
	printf("found: %d\n", found);
}
