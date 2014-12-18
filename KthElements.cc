// in a large array, find the Kth largest elements.
// use QuickSelect Algorithm

int RandomizedSelect(int* a, int start, int end, int k) {
	if(start == end)
		return a[start];
	int pos = RandomizedPartition(a, start, end);
	int length = pos - start + 1;
	if(length == k) 
		return a[pos];
	else if(k < length) {
		RandomizedSelect(a, start, pos - 1, k);
	} else {
		RandomizedSelect(a, pos + 1, end, k - length);
	}
}

int RandomizedParition(int* a, int start, int end) {
	int x = a[end];
	int i = start - 1;
	for(int j = start; j < end; ++j) {
		if(a[j] <= x) {
			i++;
			swap(&a[i], a[j]);
		}
	}
	swap(&a[i+1], a[end]);
	return i + 1;
}
