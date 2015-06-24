/* 
	Binary Tree Level Order Traversal
	Binary Tree Zig-Zag Order Traversal
*/

// Binary Tree Level Order Traversal
#include <stdio.h>
#include <vector>
#include <deque>
#include "tree.h"
using namespace std;

// Here, I just use one deque to store each level's nodes.
// otherwise, we can use two deques, one to store prev level
// one to store next level noes.

vector<int> LevelOrderTraversal(BiTree root){
	vector<int> result;
	deque<BiTNode*> nodes;
	if(!root) return result;
	nodes.push_back(root);
	while(!nodes.empty()){
		int count = nodes.size();
		while(count){
			BiTNode* tmp = nodes.front();
			result.push_back(tmp->data);
			if(tmp->lchild){
				nodes.push_back(tmp->lchild);
			}
			if(tmp->rchild){
				nodes.push_back(tmp->rchild);
			}
			nodes.pop_front();
			count--;
		}
	}
	return result;
}

vector<int> ZigZagOrder(BiTree root){
	vector<int> result;
	deque<BiTree> nodes;
	if(!root) return result;	
	nodes.push_back(root);
	bool Left2Right = false;
	bool Right2Left = true;
	while(!nodes.empty()){
		int count = nodes.size();
		while(count){
			BiTNode* tmp = nodes.front();
			result.push_back(tmp->data);
			if(Left2Right){
				if(tmp->lchild)
					nodes.push_back(tmp->lchild);
				if(tmp->rchild)
					nodes.push_back(tmp->rchild);
			}
			if(Right2Left){
				if(tmp->rchild)
					nodes.push_back(tmp->rchild);
				if(tmp->lchild)
					nodes.push_back(tmp->lchild);
			}
			Left2Right = !Left2Right;
			Right2Left = !Right2Left;
			nodes.pop_front();
			count--;
		}
	}
	return result;
}

