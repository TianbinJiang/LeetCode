/*
	Given a matrix in which each row and each column is sorted, write a method to find an element in it.
*/
#include <stdio.h>
#include <vector>
using namespace std;

int GetMatrix(vector< vector<int> >& matrix, int index){
	int nColumn = matrix[0].size();
	int nRow = matrix.size();
	int column = index % nColumn;
	int row = index / nColumn;
	return matrix[row][column];
}

vector<int> GetMatrixIndex(vector< vector<int> > &matrix, int index){
	vector<int> matrixIndex;
	matrixIndex.push_back(index / matrix[0].size());
	matrixIndex.push_back(index % matrix[0].size());
	return matrixIndex;
}

vector<int> findTarget(vector< vector<int> > &matrix, int target){
	int NColumn = matrix[0].size();
	int NRow = matrix.size();
	int low = 0;
	int high = NColumn * NRow -1;
	while(low <= high){
		int mid = low + (high - low) / 2;
		if(GetMatrix(matrix, mid) == target){
				return GetMatrixIndex(matrix, mid);
		} else if(GetMatrix(matrix, mid) < target){
			low = mid + 1;
		} else {
			high = mid - 1;
		}
	}
	return {-1, -1};
}

/*----TEST----*/

int main(void){
	vector< vector<int> > matrix;
	matrix.push_back({1, 2, 3});
	matrix.push_back({4, 5, 6});
	matrix.push_back({7, 8, 9});
	vector<int> index = findTarget(matrix, 10);
	printf("row: %d, column: %d\n", index[0], index[1]);
}
