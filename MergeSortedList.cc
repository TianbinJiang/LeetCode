// Merge K sorted Linked Lists and return it as one sorted list.
#include "list.h"
#include <vector>
#include <stdio.h>
using namespace std;

ListNode* Merge(ListNode* node1, ListNode* node2) {
	if(!node1) return node2;
	if(!node2) return node1;
	ListNode* curr = NULL;
	ListNode* head = NULL;
	ListNode* p = node1;
	ListNode* q = node2;
	while(p && q) {
		ListNode *node;
		if(p->data < q->data) {
			node = p;
			p = p->next;
		} else {
			node = q;
			q = q->next;
		}
		if(head == NULL)
			head = curr = node;
		else {
			curr->next = node;
			node->next = NULL;
			curr = node;
		}
	}
	if(p)
		curr->next  = p;
	if(q)
		curr->next = q;
	return head;
}

ListNode* mergeKLists(vector<ListNode*>& lists) {
	if(lists.size() == 0) return NULL;
	ListNode* head = lists[0];
	for(int i = 1; i < lists.size(); ++i)
		head = Merge(head, lists[i]);
	return head;
}

int main(void) {
	vector<ListNode*> lists;
	LinkList L1 = CreateList(2);
	LinkList L2 = CreateList(3);

	lists.push_back(L1);	
	lists.push_back(L2);

	LinkList newList = mergeKLists(lists);
	PrintList(newList);
}
