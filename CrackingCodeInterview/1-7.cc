/*
Write an algorithm such that if an element in an MxN matrix is 0, its
entire row and column is set to 0 
*/
#include <vector>
#include <stdio.h>
using namespace std;

// Method 1,use additional data structures.
void SetMatrix(vector< vector<int> > &matrix, int M, int N){
	vector<int> Columns(M);
	vector<int> Rows(N);
	for(int i = 0; i < M; ++i){
		for(int j = 0; j < N; ++j){
			if(matrix[i][j] == 0){
				Columns[i] = 1;
				Rows[j] = 1;
			}
		}
	}
	for(int i = 0; i < M; ++i){
		for(int j = 0; j < N; ++j){
			if(Columns[i] == 1 || Rows[j] == 1)
				matrix[i][j] = 0;
		}
	}
}

/* Method 2, do it in place(without additional data structures, one or two variables is fine)
		matrix = {{1, 2},
						  {3, 4},
							{5, 6}};
		matrix.size() = 3; Row	
		matrix[0].size() = 2; Column
*/
void SetMatrix_1(vector< vector<int> > &matrix){
	int Rows = matrix.size();
	int Columns = matrix[0].size();
	bool zeroColumn = false;
	bool zeroRow = false;
	for(int r = 0; r < Columns; ++r){
		if(matrix[0][r] == 0){
			zeroRow = true;
		}
	}
	for(int c = 0; c < Rows; ++c){
		if(matrix[c][0] == 0){
			zeroColumn = true;
		} 
	}
	// Search Zeros in other position to sign the first row and column
	for(int i = 1; i < Rows; ++i){
		for(int j = 1; j < Columns; ++j){
			if(matrix[i][j] == 0){
				matrix[i][0] = 0;
				matrix[0][j] = 0;
			}
		}
	}
	// Set zeros in other positions according to first col and row
	for(int i = 1; i < Rows; ++i){
		for(int j = 1; j < Columns; ++j){
			if(matrix[i][0] == 0 || matrix[0][j] == 0)
					matrix[i][j] = 0;
		}
	}
	if(zeroRow == true){
		for(int r = 0; r < Columns; ++r)
				matrix[0][r] = 0;
	}
	if(zeroColumn == true){
		for(int c = 0; c < Rows; ++c){
			matrix[c][0] = 0;
		}
	}
}


void PrintMatrix(vector< vector<int> > matrix){
	int M = matrix.size();
	int N = matrix[0].size();
	for(int i = 0; i < M; ++i){
		for(int j = 0; j < N; ++j){
			printf("%d ", matrix[i][j]);
		}
		printf("\n");
	}
}

/*-----TEST----*/

int main(void){
	vector< vector<int> > matrix = { {0, 1, 3},
																   {2, 3, 1}};
	
	//SetMatrix(matrix, 3, 3);
	SetMatrix_1(matrix);
	PrintMatrix(matrix);
}
