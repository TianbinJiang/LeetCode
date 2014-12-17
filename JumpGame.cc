// Given an array of non-negative integers, you are intially positioned at the first index of the array
// Each element in the array represents your maximum jump length at that position
// determine if you are able to reach the last index.
// for example:
// A = [2, 3, 1, 1, 4] return true;
// A = [3, 2, 1, 0, 4] return false;

// follow ups, return the minmum number of jumps to reach the last index.

#include <stdio.h>
using namespace std;

bool canJump(int A[], int n) {
	int cur = n - 1;
	for(int i = cur - 1; i >= 0; --i) {
		if(A[i] >= cur - i)
			cur = i;
		return cur == 0;
	}
}

int MinJumps(int A[], int n) {
	int last = 0;
	int MaxRange  = 0;
	int count = 0;
	for(int index = 0; index < n; ++index) {
		if(index > last) {
			count++;
			last = MaxRange;
		}
		MaxRange = max(MaxRange, index + A[index]);
	}
	return count;
}
