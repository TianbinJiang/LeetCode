/*
	Given a binary search tree, design an algorithm which creats a linked list of all nodes at each depth(eg, if you have a tree with depth D, you will have D linked list).
*/

//tested Tree is created by pre-order inseration. 

#include <stdio.h>
#include <iostream>
#include "LinkList.h"
#include "tree.h"
#include <deque>
#include <vector>
using namespace std;


// Method 1: revisement of level order traversal.

vector<LinkList> TraverseTreeToLinkedList(BiTree T){
	vector<LinkList> result;
	deque<BiTNode*> nodes;
	nodes.push_back(T);
	while(!nodes.empty()){
		// levelNodes tracks the number of nodes of each depth.
		int levelNodes = nodes.size();
		LinkList head = NULL;
		// inner loop keeps adding the nodes of next depth level.
		while(levelNodes > 0){
			BiTNode* tmp = nodes.front();
			Append(&head,tmp->data);
			if(tmp->lchild)
				nodes.push_back(tmp->lchild);
			if(tmp->rchild)
				nodes.push_back(tmp->rchild);
			nodes.pop_front();
			levelNodes--;
		}
		result.push_back(head);
	}
	return result;
}


/*----TEST------*/

int main(void){
	BiTree L;
	CreateBiTree(&L);
	vector<LinkList> list = TraverseTreeToLinkedList(L);
	for(int i = 0; i < list.size(); ++i){
		PrintSingleLinkList(list[i]);
	}
}
