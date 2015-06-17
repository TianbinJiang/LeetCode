/*
	Given an image represented by an NxN matrix, where each pixel in the image is 
	4 bytes, write a methods to rotate the image by 90 degrees(clock wise). How to do it in place
	Further more: what if the matrix is MxN.
*/
#include <stdio.h>
#include <vector>
#include <bitset>
#define HASH_SIZE 128

using namespace std;

void swap(int *a, int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

// Rotate NxN matrix.
void RotateMatrix(vector< vector<int> > &matrix){
	int len = matrix.size() - 1;
	// rotate the matrix in diagonal order
	for(int i = 0; i <= len; ++i){
		for(int j = 0; j <= len - i; ++j){
			swap(matrix[i][j], matrix[len - j][len - i]);
		}
	}
	// flipp matrix in len / 2 up-down order
	for(int i = 0; i <= len / 2; ++i){
		for(int j = 0; j <= len / 2; ++j){
			swap(matrix[i][j], matrix[len - i][j]);
		}
	}
}

// what if it is a MxN matrix.
/*
	:original matrix
	A[or][oc], ol = or * C + oc

	a(0) b( 1) c( 2)
  d(3) e( 4) f( 5)
	g(6) h( 7) i( 8)
	j(9) k(10) l(11)
	
	:new matrix
	a(0) d(1) g( 2) j( 3)
	b(4) e(5) h( 6) k( 7)
	c(8) f(9) i(10) l(11)
	
	// Index change:
	A[nr][nc], nl = nr * R + nc
	nr = oc, nc = or
	
	0 -> a -> 0
	1 -> 4 ->  5 -> 9 -> 3 -> 1
	2 -> 8 -> 10 -> 7 -> 6 -> 2 (Original Index -> New Index(Original Index for next round))

	thus, we need to get relationships between ol, nl throught nr, oc, or, nr, nc.
	ol = or * C + oc
	nl = nr * R + nc // nr = oc, nc = or

	ol * R = or * N + oc * R
	nl = oc * R + or

	nl % (N - 1) = ol * R % (N - 1) - (N - 1) * or % (N - 1)
	nl  = ol * R

*/

// Converation between matrix to array
vector<int> Matrix2Array(vector< vector<int> > matrix){
	vector<int> array(matrix.size() * matrix[0].size());
	int k = 0;
	for(int i = 0; i < matrix.size(); ++i){
		for(int j = 0; j < matrix[0].size(); ++j){
			array[k++] = matrix[i][j];
		}
	}
	return array;
}

void PrintArrayinMatrix(vector<int> array, int Rows, int Columns){
	for(int i = 0, j = 0; i < Rows * Columns; ++i, ++j){
		if(j == Columns){
			printf("\n");
			j = 0;
		}
		printf("%d ", array[i]);
	}
	printf("\n");
}

void RotateMatrix_1(vector< vector<int> > matrix){
	// we first translate the 2D form into an array sequence.
	int RowsNum = matrix.size();
	int ColumnsNum = matrix[0].size();
	// Make it as a max(M, N) x max(M, N) matrix, add with some special numbers.
	// What if we can't add extra 
	int size = RowsNum * ColumnsNum - 1;
	vector<int> A = Matrix2Array(matrix);
	/* Test Array */
	printf("----TEST-------\n");
	for(int i = 0; i < A.size(); ++i){
		printf("%d ", A[i]);
	}
	printf("\n");
	printf("----TEST-------\n");
	int t;
	int next; // location of next move
	int cycleBegin; // holds the start of cycle.
	int i = 1; // start and end don't change.
	// we also need to remeber whether the index has been moved.
	bitset<HASH_SIZE> b;
	b.reset();
	b[0] = b[size] = 1;

	while(i < size){
		cycleBegin = i;
		t = A[i];
		do {
			next = (i * RowsNum) % size;
			swap(A[next], t);
			b[i] = 1;
			i = next;
		} while(i != cycleBegin);
		for(i = 1; i < size && b[i]; i++)
			;
	}
	PrintArrayinMatrix(A, ColumnsNum, RowsNum);
}


void PrintMatrix(vector< vector<int> > matrix){
	for(int i = 0; i < matrix.size(); ++i){
		for(int j = 0; j < matrix[0].size(); ++j){
			printf("%d ", matrix[i][j]);
		}
		printf("\n");
	}
}

/*----TEST------*/

int main(void){
	vector< vector<int> > matrix = {{1, 2, 3},
																  {4, 5, 6}};
	PrintMatrix(matrix);
	printf("after rotated!\n");

	RotateMatrix_1(matrix);
}
