// transpos the given m*n matrix 90 degree in clock wise.
/*
	suppose we have a 2*3 matrix
  1 2
  3 4
  5 6
  7 8 
 and we transpose it into
 1 3 5 7
 2 4 6 8

The transpose can be seen as the movement of elements. 
The index moving can be shown as follows:

0 -> 0
1 -> 4 -> 2 -> 1
2 -> 1 -> 4 -> 2
3 -> 5 -> 6 -> 3
4 -> 2 -> 1 -> 4
5 -> 6 -> 3 -> 5
6 -> 3 -> 5 -> 6
7 -> 7   // as we noticed, the movement of the value forms a circle. 

We thus need to solve two problems:

1: how to detect the circle. 
   If the postorder index is smaller then the current index, there is a circle. 
2: how to compute the preorder value and the postorder value.
   before transpose, m * n matrix, the value is located as (i/N, i%N);
   after transpose, the value is (i%N, i/N), so the postorder value is (i%N)*M + i/N.
   suppose that the index j transposed into i, thus (i/M, i%M), before transpose
   it should be (i%M, i/M). Thus, the preorder value should be (i%M)*N + i/M. 

*/
#include <stdio.h>
using namespace std;

int getNext(int i, int m, int n) {
	return (i%n)*m + i/n;
}
int getPre(int i, int m, int n){
	return (i%m)*n + i/m;
}

void movedata(int* matrix, int i, int m, int n){
	int tmp = matrix[i];
	int cur = i;
	int pre = getPre(cur, m, n);
	while(pre != i) {
		matrix[cur] = matrix[pre];
		cur = pre;
		pre = getPre(cur, m, n);
	}
	matrix[cur] = tmp;
}

void transpose(int* matrix, int m, int n){
	for(int i = 0; i < m*n; ++i) {
		int next = getNext(i, m, n);
		while(next > i) {
			next = getNext(next, m, n);
		}
		if(next == i)
			movedata(matrix, i, m, n);
	}
}
