/*
	convert sorted array to BST.
	convert sorted linkedlist to BST.
*/

#include <stdio.h>
#include <vector>
#include <stdlib.h>
#include "tree.h"
#include "LinkList.h"
using namespace std;

// Convert sorted array to BST 
BiTree build(vector<char> &num, int start, int end){
	if(end < start) return NULL;
	int mid = start + (end - start) / 2;
	BiTree root = (BiTNode*)malloc(sizeof(BiTNode));
	root->data = num[mid];
	root->lchild = build(num, start, mid - 1);
	root->rchild = build(num, mid + 1, end);
	return root;
}

BiTree sortedArrayToBST(vector<char> &num){
	return build(num, 0, num.size()-1);
}

// Convert Sorted LinkedList to BST
BiTree build(LinkList &L, int start, int end){
	if(end < start) return NULL;
	int mid = start + (end - start) / 2;
	BiTree LeftChild = build(L, start, mid - 1);

	BiTree Parent = (BiTree)malloc(sizeof(BiTNode));
	Parent->data = L->element; 
	Parent->lchild = LeftChild;

	L = L->next;
	Parent->rchild = build(L, mid + 1, end);
	return Parent;
}

BiTree sortedLinkedListToBST(LinkList L){
	LinkList head = L;
	int count = 0;
	while(head){
		count++;
		head = head->next;
	}
	return build(L, 0, count - 1);
}

/*----TEST---
int main(void){
	char array[] = {'1', '2', '3', '4'};
	vector<char> test(array, array + sizeof(array)/sizeof(array[0]));
	BiTree L = sortedArrayToBST(test);
	
	vector<int> out;
	vector<int> out_1;
	InOrderTraverse(L, out);
	for(int i = 0; i < out.size(); ++i){
		printf("%d ", out[i]);
	}
	printf("\n");

	// Create a linked list
	LinkList M = CreateSingleLinkList(3);

	BiTree T =  sortedLinkedListToBST(M);
	InOrderTraverse(T, out_1);
	printf("the linked list one is %d\n", out_1.size());
	for(int i = 0; i < out_1.size(); ++i){
		printf("%c ", out_1[i]);
	}
	printf("\n"); 
}
*/
