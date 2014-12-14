// Given a list, rotate the list to the right by K places, where K is non-negative
// for example: 1->2->3->4->5->NULL and k = 2;
// Given 4->5->1->2->3->NULL

#include "list.h"
#include <stdio.h>

ListNode* rotateRight(ListNode* head, int k) {
	if(k <= 0) return head;
	ListNode **prob = &head;
	int count = 0;
	while(*prob) {
		prob = &((*prob)->next); // prob goes to the end
		++count;
	} // caculate the length of this list.
	if(count <= 1) return head;
	k = k % count; // in case of K larger than length;
	*prob = head; // form a circle. 
	for(int i = 0; i < count - k; ++i){
		prob = &((*prob)->next);
	}
	head = *prob;
	*prob= NULL;
	return head;
}

int main(void) {
	LinkList L = CreateList(5);
	PrintList(L);
	LinkList newList = rotateRight(L,2);
	PrintList(newList);
}
