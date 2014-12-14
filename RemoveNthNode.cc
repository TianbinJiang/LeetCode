// Remove nth node from end of the linkedlist
#include "list.h"
#include <stdio.h>
using namespace std;

ListNode* removeNthFromEnd(ListNode* head, int n) {
	if(n < 0) return head;
	ListNode* prev = head;
	ListNode* curr = head;
	ListNode* tmp = head;
	while(n-- > 0 && tmp)
		tmp = tmp->next;

	while(tmp) {
		prev = curr;
		curr = curr->next;
		tmp = tmp->next;
	}
	prev->next = curr->next;
	ListNode* rm = curr == head ? head->next: head;
	delete curr;
	return rm;
}

int main(void) {
	LinkList L = CreateList(5);
	PrintList(L);
	LinkList newList = removeNthFromEnd(L, 3);
	PrintList(newList);
	return 0;
}
