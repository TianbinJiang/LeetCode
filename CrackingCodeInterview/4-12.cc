/*
	Two elements of a binary search tree are swapped by mistake.
	recover the tree without changing its structure.
*/
#include <stdio.h>
#include "tree.h"
#include <vector>
using namespace std;

void swap(int* a, int* b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

void recoverTree(BiTree root, BiTree &prev, BiTree &first, BiTree &second){
	if(!root) return;
	recoverTree(root->lchild, prev, first, second);
	if(prev && (prev->data > root->data)){
		if(first == NULL)
			first = prev;
		second = root;
	}
	prev = root;
	recoverTree(root->rchild, prev, first, second);
}

void SwapNodesBack(BiTree root){
	BiTree prev = NULL, first = NULL, second = NULL;
	recoverTree(root, prev, first, second);
	swap(first->data, second->data);
}


/*----TEST----

int main(void){
	BiTree L;
	CreateBiTree(&L);

	vector<int> out;
	vector<int> out_1;

	InOrderTraverse(L, out);

	SwapNodesBack(L);

	InOrderTraverse(L, out_1);

	for(int i = 0; i< out.size(); ++i){
		printf("%d ", out[i]);
	}
	printf("\n");


	for(int i = 0; i < out_1.size(); ++i){
		printf("%d ", out_1[i]);
	}
	printf("\n");

}

*/
