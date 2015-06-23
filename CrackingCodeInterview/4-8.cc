/*
	Two Sum in BST
	Given a BST and a value x. Find two nodes in the tree whose sum is equal x.
	Additioanl space: O(height of the tree). It is not allowed to modify the tree.
*/

#include <vector>
#include <stdio.h>
#include "tree.h"
#include <stack>
using namespace std;

// Method 1, if we don't care about the space complexity. we just need to do a in-order traverse of the bst. We thus change this question into a two sliding pointer issue.

void InOrderTraverse(BiTNode *root, vector<char> &result){
	if(root){
		InOrderTraverse(root->lchild, result);
		result.push_back((int)root->data);
		InOrderTraverse(root->rchild, result);
	}
}

vector<int> TwoSumBST(BiTNode *root, int value){
	vector<int> TwoPoints;
	vector<char> result;
	InOrderTraverse(root, result);

	int start = 0, end = result.size() - 1;
	while(start < end){
		int front = (result[start] - '0');
		int back = (result[end] - '0');

		if(front + back < value){
			++start;
		} else if(front + back > value){
			--end;
		}else {
			TwoPoints.push_back(front);
			TwoPoints.push_back(back);
			break;
		}
	}
	return TwoPoints;
}

// Method 2: if we can only use O(lgn) space. we should only consider DFS
bool TwoSumBST_1(BiTree root, int target){
	BiTNode *leftNode = root;
	BiTNode *rightNode = root;
	if(!root) return false;
	stack<BiTNode*> front;
	stack<BiTNode*> back;
	bool Done = false;
	bool LeftDone = false;
	bool RightDone = false;
	int leftValue, rightValue;
	while(!Done){

		// go to the leftmost to find the smallest value.
		while(!LeftDone){
			if(leftNode){
				front.push(leftNode);
				leftNode = leftNode->lchild; 
			} else {
				if(front.empty()) LeftDone = true;
				else {
					leftNode = front.top();
					leftValue = leftNode->data - '0';
					printf("the left value is %d", leftValue);
					// get the next node
					leftNode = leftNode->rchild;
					front.pop();
					LeftDone = true;
				}
			}
		}
			
		// go to the rightmost to find the biggest value
		while(!RightDone){
			if(rightNode){
				back.push(rightNode);
				rightNode = rightNode->rchild;
			} else {
				if(back.empty()) RightDone = true;
				else{
					rightNode = back.top();
					rightValue = rightNode->data - '0';
					printf("the right value is %d", rightValue);
					// get the next node
					rightNode = rightNode->lchild;
					back.pop();
					RightDone = true;
				}
			}
		}
		
		if((leftValue != rightValue) && (leftValue + rightValue) == target){
			return true;
		} else if(leftValue + rightValue < target){
			LeftDone = false;
		} else if(leftValue + rightValue > target){
			RightDone = false;
		}
		if(leftValue > rightValue)
			return false;
	}
}


/* TEST
int main(void){
	BiTree T;
	int target = 10;
	CreateBiTree(&T);


	vector<int>result = TwoSumBST(T, target);
	for(int i = 0; i < result.size(); ++i){
		printf("%d ", result[i]);
	}
	printf("\n");

	bool flag = TwoSumBST_1(T, target);
	printf("Exists: %d\n", flag);
}
*/
