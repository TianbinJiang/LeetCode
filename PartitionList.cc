// Given a linked list and a value x, partition it such that all nodes
// less than x come before nodes greater than or equal to X
// you should preserve the original relative order of the nodes in each
// of the two partitions.
// for example, 1->4->3->2->5->2 and x = 3
// return 1->2->2->4->3->5

#include <stdio.h>
#include <stdlib.h>
#include "list.h"

ListNode* partition(ListNode* head, int x) {
	if(!head) return NULL;
	ListNode* LeftDummy = (ListNode*)malloc(sizeof(ListNode));
	ListNode* RightDummy = (ListNode*)malloc(sizeof(ListNode));
	ListNode* Lhead = LeftDummy, *Rhead = RightDummy;

	ListNode* curr = head;
	while(curr) {
		if(curr->data < x) {
			Lhead->next = curr;
			Lhead = curr;
			curr = curr->next;
		} else {
			Rhead->next = curr;
			Rhead = curr;
			curr = curr->next;
		}
	}
	Rhead->next = NULL;
	Lhead->next = RightDummy->next;
	return LeftDummy->next;
}

// test
int main(void) {
	ListNode* L = CreateList(5);
	PrintList(L);
	LinkList newList = partition(L, 3);
	PrintList(newList);
}
