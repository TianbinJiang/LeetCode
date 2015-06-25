/*
	Given an integer, print the next smallest and next largest number that have the same number of 1 bits in the binary representation.
*/

#include <stdio.h>
#include <bitset>
#include <climits>
#include <iostream>
using namespace std;

// Brute Force Method is the most straight forward.
// This method is definitely not acceptable in interview...erh
int BitCount(int value){
	int count = 0;
	while(value){
		if(value & 0x1){
			count++;
		}
		value = value >> 1;
	}
	return count;
}

int nextSmall(int target){
	int larget = 0;
	for(int i = 0; i < target; i++){
		if(BitCount(i) == BitCount(target)){
			if(i >= larget)
				larget = i;
		}
	}
	return larget;
}

int nextBig(int target){
	for(int i = target + 1; i < INT_MAX; ++i){
		if(BitCount(i) == BitCount(target)){
			return i;
		}
	}	
}

// One method get in Hacker's Delight. Bit twistling is powerful! 
// Divide and Conquer
// count 1s number in target
int BitCount_optimized(int target){
	target = (target & 0x55555555) + ((target >> 1) & 0x55555555);
	target = (target & 0x33333333) + ((target >> 2) & 0x33333333);
	target = (target & 0x0f0f0f0f) + ((target >> 4) & 0x0f0f0f0f);
	target = (target & 0x00ff00ff) + ((target >> 8) & 0x00ff00ff);
	target = target & 0x0000ffff + ((target >> 16) & 0x0000ffff);
	return target;
}

// Next Big Number has the same 1s as target
unsigned nextBig_1(int target){
	unsigned smallest, ripple, ones;
	// get the leftmost 1 of a continues block
	smallest = target & -target;
	// get the right most one of the result.
	ripple = target + smallest;
	ones = target ^ ripple;
	ones = (ones >> 2) / smallest;
	return ripple | ones;
}



/*-----TEST-----*/

int main(void){
	int target = 100;
	cout << "target number is:" << target << endl;
	cout << bitset<32>(target) << endl;
	int prevSmall = nextSmall(target);
	cout << "previous small number is:" << prevSmall << endl;
	cout << bitset<32>(prevSmall) << endl;

	int nextLarge = nextBig_1(target);
	cout << "next large number is:" << nextLarge << endl;
	cout << bitset<32>(nextLarge) << endl;
	
}
