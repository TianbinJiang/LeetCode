/*
	check validate BST
	Recursive way and iterative method? 
*/

#include "tree.h"
#include <stdio.h>
#include <climits>
#include <algorithm>
using namespace std;

// Check recursively. Left nodes are smaller than root, right nodes are larger.

bool validateBST(BiTree root, int max, int min){
	if(!root) return true;
	if(root->data < min || root->data > max) return false;
	if(!validateBST(root->lchild, root->data, min) ||
		 !validateBST(root->rchild, max, root->data)) return false;
	return true;
}

bool checkBST(BiTree root){
	if(!root) return true;
	return validateBST(root, INT_MAX, INT_MIN);
}

// we can in-order traverse the tree and check whether the output is already in assending order.
// is_sorted is SGI STL extended function. The current GCC chooses to not include it. Thus, better do
// not use it! But it is good to know.....
bool checkBST_1(BiTree root){
	vector<int> out;
	InOrderTraverse(root, out);
	return is_sorted(out.begin(), out.end());
}



/*---TEST----*/

int main(void){
	BiTree L;
	CreateBiTree(&L);
	bool validate = checkBST_1(L);
	printf("tree validate? %d\n", validate);
}
