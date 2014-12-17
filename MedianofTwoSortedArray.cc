// There are two sorted arrays A and B of size m and n respectively. Find the median of the two sorted arrays. The overall run time complexity should be O(lg(m+n))
// First method: Merge the two sorted arrays and find the median. The time complexity will be O(m+n) and the space complexity is also O(m + n);
// Observe that the two array are sorted and it seems that the required time complexity is binary sort...
// Code from geeksforgeeks.

#include <stdio.h>
using namespace std;

double find(int A[], int m, int B[], int n, int k){
	if(m == 0) return B[k - 1];
	if(n == 0) return A[k - 1];
	int i = (double)m / (m + n) * k - 1;
	int j = k - i - 1;
	int Ai_1 = ((i == 0) ? INT_MIN : A[i - 1];
	int Ai = ((i == m) ? INT_MAX: A[i]);
	int Bj_1 = ((j == 0) ? INT_MIN: B[j - 1]);
	int Bj = ((j == n)? INT_MAX: B[j]);

	if(Bj_1 < Ai && Ai < Bj) return Ai;
	if(Ai_1 < Bj && Bj < Ai) return Bj;

	if(Ai < Bj) 
		return find(A + i + 1, m - i - 1, B, j, k - i - 1);
	else
		return find(A, i, B + j + 1, n - j - 1, k - j - 1);
}

double FindMedian(int A[], int m, int B[], int n){
	int total = (m + n);
	if(total % 2) {
		double a = find(A, m, B, n, total/2);
		double b = find(A, m, B, n, total/2 + 1);
		return (a + b) / 2.0
	} else {
		return find(A, m, B, n, total/2);
	}
}
