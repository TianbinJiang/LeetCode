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

// This method is provided by hawstein. Pre-compute a matrix sum subset table.
// We use a 2-D matrix to keep the subset sum. p[i][j] stands for from (i, j) to (1, 1) subset sum.
// p[i][j] = p[i-1][j] + p[i][j- 1] - p[i-1][j-1] + A[i][j]. A[i][j] stands for matrix element (i, j);

const int MAX_N = 100;
int p[MAX_N][MAX_N];

void preCompute(vector< vector<int> > &matrix){
	n = matrix.size();
	for(int i = 0; i<= n; ++i)
		p[0][i] = p[i][0] = 0;
	for(int i = 1; i <= n; ++i){
		for(int j = 1; j <= n; ++j){
			p[i][j] = p[i-1][j] + p[i][j-1] - p[i-1][j-1] + matrix[i][j]
		}
	}
}

int MaxSum(vector< vector<int> > &matrix){
	int max_sum = 1 << 31; //min_int;
	for(int i = 1; i < n; ++i){
		for(int j = 1; j < n; ++j){
			int cur_sum = 0;
			for(int k = 1; k <= n; ++k){
				int val = p[j][k] - p[j][k-1] - p[i - 1][k] + p[i-1][k-1];
				if(cur_sum < 0)
						cur_sum = val;
				else
						cur_sum += val;
				if(cur_sum > max_sum)
					max_sum = cur_sum;
			}
		}
	}
	return max_sum;
}

/*---TEST---*/
int main(void){
	vector< vector<int> > matrix;
	matrix.push_back({0, 20, 10});
	matrix.push_back({0, 6, 3});
	matrix.push_back({0, -2, -3});
	int maxSum = LargestSum(matrix);
	printf("the largest sum is %d\n", maxSum);
}
