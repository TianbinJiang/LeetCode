/*
	An array [1...n] contains all the integers from 0 to N except for one number which is missing. In this problem, we cannot access an entire integer in A with a single operation. The elements of A are represented in binary, and the only operation we can use to access them is "fetch the jth bit of A[i]", which takes constant time. Write code to find the missing number. Can you do it in O(n) time?
*/

// Simple method:
// according to the i and jth bit, we can calculate the elements in array.
int get(int a[], int i){
	int ret = 0;
	for(int j = 31; j >= 0; --j){
		ret = (ret << 1) | fetch(a, i, j);
	}
	return ret;
}

int missing(int a[], int n){
	bool b[n + 1] = {false};
	for(int i = 0; i < n; ++i){
		b[get(a, i)] = true;
	}
	for(int i = 0; i < n + 1; ++i)
		if(!b[i]) return i;
}

// Cracking Code Interview gives a pretty tricky answer...

// Hawstein blog asked another question:
// what if we can only get the jth of array A. fetch(a,j), not the fetch(a, i, j).
