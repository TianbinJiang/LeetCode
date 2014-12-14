// Merge two sorted array without additional memory

#include <stdio.h>
#include <vector>
using namespace std;

void MergeSortArrays(vector<int> &LongArray, vector<int> &ShortArray, int LongUsed) {
	int LongTail = LongUsed - 1;
	int ShortTail = ShortArray.size() - 1;
	while(LongTail && ShortTail) {
		if(LongArray[LongTail] > ShortArray[ShortTail]) {
			LongArray[LongTail + ShortTail + 1] = LongArray[LongTail];
			--LongTail;
		} else {
			LongArray[LongTail + ShortTail + 1] = ShortArray[ShortTail];
			--ShortTail;
		}
	}
	while(ShortTail) {
		LongArray[ShortTail] = ShortArray[ShortTail];
		--ShortTail;
	}
}

int main(void) {
}
