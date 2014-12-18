// Given a linked list. Sort it using O(NlgN) time

#include "list.h"
#include <stdio.h>
using namespace std;

ListNode* Merge(ListNode* a, ListNode* b) {
	ListNode* result = NULL;
	if(a == NULL) 
		return b;
	if(b == NULL)
		return a;
	if(a->data <= b->data) {
		result = a;
		result->next = Merge(a->next,b);
	} else {
		result = b;
		result->next = Merge(a, b->next);
	}
	return result;
}

void SplitFrontBack(ListNode* head, ListNode** frontRef, ListNode** backRef) {
	ListNode* fast;
	ListNode* slow;
	if(head == NULL || head->next == NULL) {
		*frontRef = head;
		*backRef = NULL;
	} else {
		slow = head;
		fast = head->next;
		while(fast) {
			fast = fast->next;
			if(fast) {
				slow = slow->next;
				fast = fast->next;
			}
		}
		*frontRef = head;
		*backRef = slow->next;
		slow->next = NULL;
	}
}

ListNode* MergeSort(ListNode** headRef) {
	ListNode* head = *headRef;
	ListNode* a;
	ListNode* b;
	if(head == NULL || head->next == NULL)
		return NULL;
	SplitFrontBack(head, &a, &b);
	MergeSort(&a);
	MergeSort(&b);

	*headRef = Merge(a, b);
}

int main(void){
	LinkList L = CreateList(4);
	PrintList(L);
	LinkList newList = MergeSort(&L);
	PrintList(newList);
}
