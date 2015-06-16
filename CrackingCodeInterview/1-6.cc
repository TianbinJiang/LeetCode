/*
	Given an image represented by an NxN matrix, where each pixel in the image is 
	4 bytes, write a methods to rotate the image by 90 degrees(clock wise). How to do it in place
	Further more: what if the matrix is MxN.
*/
#include <stdio.h>
#include <vector>
using namespace std;

void swap(int *a, int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

// Rotate NxN matrix with additional data structures.
void RotateMatrix(vector< vector<int> > &matrix){
	int len = matrix.size() - 1;
	// rotate the matrix in diagonal order
	for(int i = 0; i <= len; ++i){
		for(int j = 0; j <= len - i; ++j){
			swap(matrix[i][j], matrix[len - j][len - i]);
		}
	}
	// flipp matrix in len / 2 up-down order
	for(int i = 0, j = len -i; i <= len; ++i){
		swap(matrix[i][j], matrix[i][len - j]);
	}
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
																  {4, 5, 6},
																  {7, 8, 9}};
	PrintMatrix(matrix);
	printf("after rotated!\n");
	RotateMatrix(matrix);
	PrintMatrix(matrix);
}
