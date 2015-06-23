/*
	Given a binary Tree, check whether it is a mirror of itself.
	for example:
	The tree is created in pre-order: 123##4##24##3##  
				1
			/		\
		2				2
	/		\		/		\
 3		 4 4		 3

but this one is not
The input tree: 12#3##2#3##  
			1
		/		\
	2				2
		\				\
			3				3
*/

/* Find methods to solve it recursively and iteratively.
	 A big mistake have ever made: I first thought in-order traverse the tree
	 and than check whether the output are palindrome or not can solve this problem
	 iteratively. But it turns out A BIG MISTAKE. Check out the test case as follows
					1
				/		\
			2				3
		/					/
	3					2     It is inorder traverse is: 32123, But clearly it is not a symmantric tree.

*/

#include <stdio.h>
#include "tree.h"
#include <vector>
#include <deque>
using namespace std;

// Method 1: recursive way
bool sym(BiTree left, BiTree right){
	if(!left && !right) return true;
	if(!left || !right) return false;
	if(left->data != right->data) return false;
	return sym(left->lchild, right->rchild) && sym(left->rchild, right->lchild);
}

bool checkSymmetric(BiTree root){
	if(!root) return true;
	return sym(root->lchild, root->rchild);
}

//Method 2: non-recursive way
// In-order traverse the tree, if symmetric, the ouput should be palindrome

bool checkPalindrome(vector<char> result, int start, int end){
	while(start < end){
		if(result[start] != result[end]) return false;
		start ++;
		end --;
	}
	return true;
}

bool checkSymmetric_1(BiTree root){
	if(!root) return true;
	deque<BiTNode*> nodes;
	nodes.push_back(root);

	while(!nodes.empty()){
		vector<char> result;
		int i = 0;
		int LevelSize = nodes.size();

		while(i < LevelSize){
			BiTNode* tmp = nodes.front();	
			i++;
		
			if(tmp) result.push_back(tmp->data);
			else result.push_back('#');
			
			if(!tmp){
				nodes.pop_front();
				continue;
			}
			nodes.push_back(tmp->lchild);
			nodes.push_back(tmp->rchild);

			nodes.pop_front();

		}
		
		if(!checkPalindrome(result, 0, result.size() - 1)) return false;
		result.clear();
	}
	return true;
}

/*---TEST----*/

int main(void){
	BiTree T;
	CreateBiTree(&T);
	bool flag = checkSymmetric_1(T);
	printf("is symmetric: %d\n", flag);
}
