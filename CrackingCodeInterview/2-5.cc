/*
	Given a circular linked list, implement an algorithm which returns node at the begining of the loop.
	DEFINITION
	Circular Linked List: A linked list in which a node's next pointer points to an earlier node, so as to make a loop in the linked list.
	Example:
	input: A->B->C->D->E->C
	output C
*/
// Suppose we stored integer in the linked list.

#include <vector>
#include <stdio.h>
#include <algorithm>
#include "LinkList.h"
using namespace std;

// Method 1: if extra memory space is allowed.
LinkList DetectCircle(LinkList L){
	vector<int> data;
	LinkList current = L;
	LinkList head = L;
	LinkList repeatNode;
	while(current){
		if(find(data.begin(), data.end(), current->element) != data.end()){
			repeatNode = current;
			break;
		}
		data.push_back(current->element);
		current = current->next;
	}
	if(repeatNode){
		while(head != repeatNode){
			head = head->next;
		}
		return head;
	}
	return NULL;
}

// Another method is the popular two pointers.
// fast = fast->next->next, slow = slow->next
// if(fast == slow) there is a circle.

LinkList FindBeginning(LinkList head){
	LinkList slow = head;
	LinkList fast = head;
	while(n2->next != NULL){
		slow = slow->next;
		fast = fast->next->next;
		if(slow == fast) break;
	}
	if(fast->next == NULL) return NULL;
	slow = head;
	while(slow != fast){
		slow = slow->next;
		fast = fast->next;
	}
	return fast;
}
