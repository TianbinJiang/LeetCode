/*
	Implement a function to check if a tree is balanced.
	for the purposes of this question, a balanced tree
	is defined to be a tree such that no two leaf node
	differ in distance from the root by more than one.
*/
// The tree is created in pre-order. 

#include "tree.h"
#include <stdio.h>
#include <algorithm>

int max(int a, int b){
	return a > b ? a : b;
}

int min(int a, int b){
	return a < b ? a : b;
}


// Method 1: recursively check every node.
int Depth(BiTree T){
	if(!T) return 0;
	return 1 + max(Depth(T->rchild), Depth(T->lchild));
}

int minDepth(BiTree T){
	if(!T) return 0;
	return 1 + min(minDepth(T->rchild), minDepth(T->lchild));
}

bool checkBalance(BiTree T){
	if(!T) return true;
	int leftDepth = Depth(T->lchild);
	int rightDepth = Depth(T->rchild);
	return (abs(leftDepth - rightDepth) <= 1) && checkBalance(T->lchild) && checkBalance(T->rchild);
}

// Method 2: Just check the minDepth and maxDepth of the root.
// if the abs(minDepth - maxDepth) <= 1, it is a balanced tree.
// otherwise it is not balanced. 

bool checkBalance_1(BiTree T){
	int maxDepth = Depth(T);
	int miniDepth = minDepth(T);
	return abs(maxDepth - miniDepth) <= 1;
}

/*-------TEST--------*/

int main(void){
	BiTree T;
	CreateBiTree(&T);
	bool balanced = checkBalance_1(T);
	printf("balanced: %d\n", balanced);
}
