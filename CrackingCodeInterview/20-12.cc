/*
	Given an NxN matrix of positive and negative integers, write code to find the submatrix with the largest possible sum.
*/

// Brute Force Method, it will take O(n ^ 6). This is too much 

#include <stdio.h>
#include <vector>
using namespace std;

int LargestSum(vector< vector<int> > &matrix){
	int Row = matrix.size();
	int Column = matrix[0].size();
	int maxSum = 0;
	for(int RowStart = 0; RowStart < Row; RowStart ++){
		for(int RowEnd = RowStart + 1; RowEnd < Row; RowEnd++){
			for(int ColumnStart = 0; ColumnStart < Column; ColumnStart ++){
				for(int ColumnEnd = ColumnStart + 1; ColumnEnd < Column; ColumnEnd++){
					int sum = 0;
					for(int i = RowStart; i <= RowEnd; i++){
						for(int j = ColumnStart; j <= ColumnEnd; ++j){
							sum = sum + matrix[i][j];
						}
					}
					if(sum >= maxSum){
						maxSum = sum;
					}
				}
			}
		}
	}
	return maxSum;
}


// Optimized Method. O(n ^ 4), we can precompute some subset.



/*---TEST---*/
int main(void){
	vector< vector<int> > matrix;
	matrix.push_back({0, 20, 10});
	matrix.push_back({0, 6, 3});
	matrix.push_back({0, -2, -3});
	int maxSum = LargestSum(matrix);
	printf("the largest sum is %d\n", maxSum);
}
