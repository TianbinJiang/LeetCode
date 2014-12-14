// Given a linked list, reverse the nodes of a linked list K at a time
// and return its modified list. If the number of nodes is not a multiple
// of K then left-out nodes in the end should remain as it is. You may
// may not alter the values in the nodes, only nodes itself may be changed.
// Only constant memory is allowed. 
// Given the linked list 1->2->3->4->5
// for k = 2, return: 2->1->4->3->5
// for k = 3, return: 3->2->1->4->5

#include "list.h"
#include <stdio.h>
#include <stdlib.h>
using namespace std;

ListNode* Reverse(ListNode* prev, ListNode* end) {
	ListNode* last = prev->next;
	ListNode* curr = last->next;
	while(curr != end) {
		last->next= curr->next;
		curr->next = prev->next;
		prev->next = curr;

		curr = last->next;
	}
	return last;  // here the last node is used a pre in the next reverse.
}

ListNode* reverseKGroup(ListNode* head, int k) {
	ListNode *dummy = (LinkList)malloc(sizeof(ListNode));
	dummy->next = head;
	ListNode* prev = dummy;
	int i = 0;
	while(head){
		if(++i % k == 0){
			prev = Reverse(prev, head->next);
		}
		head = head->next;
	}
	return dummy->next;
}

// test
int main(void) {
	LinkList L = CreateList(5);
	PrintList(L);
	LinkList newList = reverseKGroup(L, 2);
	PrintList(newList);
}
