/*
	Find K nearest neightbours in BST
*/
#include <stdio.h>
#include <vector>
#include <deque>
#include "tree.h"
#include <algorithm>
using namespace std;

// Method 1: recursive way
void findKnn(BiTree root, int k, int target, deque<int>& out){
	if(!root) return;
	findKnn(root->lchild, k, target, out);
	if(out.size() < k){
		out.push_back(root->data);
	} else if(out.size() == k){
		if(abs(target - root->data) < abs(target - out.front())){
			out.pop_front();
			out.push_back(root->data);
		}
	}
	findKnn(root->rchild, k, target, out);
}

// Method 2: non-recursive way
// we can just in-order traverse the BST and change it into an array problem.
// no better than the recursive way.....waste of energy.....LOL
deque<int> findKnn_1(BiTNode* root, int k, int target){
	deque<int> result;
	if(!root) return result;
	vector<int> out;
	int j = 0;
	InOrderTraverse(root, out);
	/* Dont consider this case.
	if(out.size() <= k){
	}
	*/
	for(int i = 0; i < out.size(); ++i){
		if(j < k){
			result.push_back(out[i]);
			++j;
		}else if(j == k){
			if(abs(target - out[i]) < abs(target - result.front())){
				result.pop_front();
				result.push_back(out[i]);
			}
		}
	}	
	return result;
}

/* --TEST*/

int main(void){
	BiTree L;
	CreateBiTree(&L);
	deque<int> out;
	findKnn(L, 2, 4, out);
}
