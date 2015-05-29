/* Given a collection of numbers, return all possible permutations.
*/

#include <stdio.h>
#include <vector>
using namespace std;

void swap(int* a, int* b) {
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

void permutation(vector<int> &num, vector< vector<int> > &result, int nStart, int nEnd) {
	if(nStart < nEnd - 1) {
		permutation(num, result, nStart + 1, nEnd);
		for(int i = nStart + 1; i < nEnd; ++i) {
			swap(&num[nStart], &num[i]);
			permutation(num, result, nStart + 1, nEnd);
			swap(&num[nStart], &num[i]);
		}
	} else {
		result.push_back(num);
	}
}

// Test Cases

void PrintVector(vector< vector<int> > &num) {
	for(int i = 0; i < num.size(); ++i) {
		for(int j = 0; j < num[i].size(); ++j) {
			printf("%d", num[i][j]);
		}
		printf("\n");
	}
}

int main(void) {
	int tmp[] = {1, 2, 3};
	vector<int> testVector(tmp, tmp + 3);
	vector< vector<int> > result;

	permutation(testVector, result, 0, 3);
	PrintVector(result);
}
