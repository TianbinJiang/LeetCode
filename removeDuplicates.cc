// Remove Duplicates from sorted linkedlist
#include "list.h"
#include <stdio.h>
using namespace std;

ListNode* removeDuplicates(ListNode* head) {
	if(!head || !head->next) return head;
	ListNode* runner = head;
	ListNode* curr = head->next;
	// set two pointers like sorted array method. 
	while(curr) {
		if(curr->data != runner->data) {
			runner = runner->next;
			runner->data = curr->data;
		}
		curr = curr->next;
	}
	ListNode* removed = runner->next;
	runner->next = NULL;
	while(removed) {
		ListNode* tmp = removed;
		removed = removed->next;
		delete tmp;
	}
	return head;
}

//test

int main(void) {
	// create five nodes linklist.
	LinkList L1 = CreateList(5);
	PrintList(L1);
	LinkList newList = removeDuplicates(L1);
	PrintList(newList);
}
