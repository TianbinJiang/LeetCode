#include <iostream>
#include <limits.h>
using namespace std;
#define n 4

struct MinHeapNode{
	int element;
	int i;
	int j;
};

void swap(MinHeapNode* x, MinHeapNode* y);

class MinHeap{
	MinHeapNode *harr;
	int heap_size;
public:
	MinHeap(MinHeapNode a[], int size);
	void MinHeapify(int );
	int left(i){return 2  * i  + 1;}
	int right(i){return 2 * i + 2;}
	MinHeapNode getMin() {return harr[0];}
	void replaceMin(MinHeapNode x){harr[0] = x; MinHeapify(0);}
};

int *mergeKArrays(int arr[][n], int k){
	int *output = new int[n * k];
	MinHeapNode* harr = new MinHeapNode[k];
	for(int i = 0; i < k; ++i){
		harr[i].element = arr[i][0];
		harr[i].i = i;
		harr[i].j = 1;
	}
	MinHeap hp(harr, k);
	for(int count = 0; count < n * k; count++){
		MinHeapNode root = hp.getMin();
		output[count] = root.element;

		if(root.j < n){
			root.element = arr[root.i][root.j];
			root.j += 1;
		}
		else root.element = INT_MAX;
		hp.replaceMin(root);
	}
	return output;
}

MinHeap::MinHeap(MinHeapNode a[], int size){
	heap_size = size;
	harr = a;
	int i = (heap_size - 1) / 2;
	while(i >= 0){
		MinHeapify(i);
		i--;
	}
}

void MinHeap::MinHeapify(int i){
	int l = left(i);
	int r = right(i);
	int smallest = i;
	if(l < heap_size && harr[l].element < harr[i].element){
		smallest = l;
	}
	if(r < heap_size && harr[r].element < harr[smallest].element){
		smallest = r;
	}
	if(smallest != i){
		swap(&harr[i], &harr[smallest]);
		MinHeapify(smallest);
	}
}

void swap(MinHeapNode* x, MinHeapNode* y){
	MinHeapNode tmp = *x;
	*x = *y;
	*y = tmp;
}


