/*
	Design an algorithm and write code to find first common ancestor of two nodes
	in a binary tree. Avoid storing additional nodes in a data structure. Note: This is not necessarily a binary search tree.
*/

#include <stdio.h>
#include <iostream>
#include <vector>
#include "LinkList.h"
#include "tree.h"

using namespace std;

// Method 1: BiTNode has no parent pointer.
// Bottom Up method

BiTNode FindCommonNode(BiTNode root, BiTNode node1, BiTNode node2){
	if(root == node1 || root == node2)
		return root;
	else {
		BiTNode left = FindCommonNode(root->left, node1, node2);
		BiTNode right = FindCommonNode(root->right, node1, node2);
		if(left && right) return root;
		else if(left) return left;
		else(right) return right;
	}
}

// Method 2: BiTNode has no parent pointer.
// Top Down Method

int countMatches(BiTNode root, BiTNode node1, BiTNode node2){
	if(!root) return 0;
	int match = countMatches(root->rchild, node1, node2) + countMatches(root->lchild, node1, node2);
	if(root == node1 || root == node2) return 1 + match;
	else return match;
}

BiTNode FindCommonNode(BiTNode root, BiTNode node1, BiTNode node2){
	if(!root || !node1 || !node2) return NULL;
	if(root == node1 || root == node2) return root;
	int totalMatches = countMatch(root->left, node1, node2);
	// if totalMatches == 1, it turns out that node1 and node2 are on different sides.
	if(totalMatches == 1) return root;
	// if totalMatches == 2, it turns out that the node1 and node2 are on the left side.
	else if(totalMatches == 2) return FindCommonNode(root->left, node1, node2);
	// otherwise, they are both on the right side.
	else return FindCommonNode(root->right, node1, node2);
}

// Method 3: if BiTNode has parent pointer.

int GetHeight(BiTNode root){
	int height = 0;
	while(root){
		height++;
		root = root.parent;
	}
	return height;
}

BiTNode FindCommonNode(BiTNode root, BiTNode node1, BiTNode node2){
	int height1 = GetHeight(node1);
	int height2 = GetHeight(node2);
	if(height1 < height2) {
		swap(height1, height2);
		swap(node1, node2);
	}
	for(int i = 0; i < height1 - height2, ++i){
		node1 = node1.parent();
	}
	while(node1 && node2){
		if(node1 == node2) return node1;
		node1 = node1.parent;
		node2 = node2.parent;
	}
	return NULL;
}
