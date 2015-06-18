/*
	Sort a given Single linkedlist
*/
#include <stdio.h>
#include "LinkList.h"
using namespace std;

LinkList getTail(LinkList cur){
	while(cur && cur->next){
		cur = cur->next;
	}
	return cur;
}


LinkList partition(LinkList head, LinkList end, LinkList *newHead, LinkList *newEnd){
	LinkList pivot = end;
	LinkList prev = NULL, cur = head, tail = pivot;
	while(cur != pivot){
		if(cur->element < pivot->element){
			if(*newHead == NULL)
				*newHead = cur;
			prev = cur;
			cur = cur->next;
		} else {
			if(prev)
				prev->next = cur->next;
			LinkList tmp = cur->next;
			cur->next = NULL;
			tail->next = cur;
			tail = cur;
			cur = tmp;
		}
	}
	if(*newHead == NULL)
			*newHead = pivot;
	*newEnd = tail;
	return pivot;
}

LinkList quickSortRecur(LinkList head, LinkList end){
	if(!head || head == end) return head;
	LinkList newHead = NULL, newEnd = NULL;
	LinkList pivot = partition(head, end, &newHead, &newEnd);
	if(newHead != pivot){
		LinkList tmp = newHead;
		while(tmp->next != pivot){
			tmp = tmp->next;
		}
		tmp->next = NULL;
		newHead = quickSortRecur(newHead, tmp);

		tmp = getTail(newHead);
		tmp->next = pivot;
	}
	pivot->next = quickSortRecur(pivot->next, newEnd);
	return newHead;
}

// QuickSort
void QuickSortLinkedList(LinkList *L){
	*L = quickSortRecur(*L, getTail(*L));
	return;
}

// MergeSort of single linked list.
LinkList Merge(LinkList a, LinkList b){
	if(!a) return b;
	if(!b) return a;
	LinkList result = NULL;
	if(a->element <= b->element){
		result = a;
		result->next = Merge(a->next, b);
	} else {
		result = b;
		result->next = Merge(a, b->next);
	}
	return result;
}

void FrontBackSplit(LinkList L, LinkList* front, LinkList* back){
	LinkList fast, slow;
	if(!L || !L->next){
		*front = L;
		*back = NULL;
	} else{
		slow = L;
		fast = L->next;
		while(fast){
			fast = fast->next;
			if(fast){
				slow = slow->next;
				fast = fast->next;
			}
		}
		*front = L;
		*back = slow->next;
		slow->next = NULL;
	}
}

void MergeSortLinkedList(LinkList* L){
	if(!*L || !(*L)->next) return;
	LinkList front, end;
	LinkList head= *L;

	FrontBackSplit(head, &front, &end);
	
	MergeSortLinkedList(&front);
	MergeSortLinkedList(&end);
	*L = Merge(front, end);
}


/*-----TEST----*/

int main(void){
	printf("input 3 integers:\n");
	LinkList L = CreateSingleLinkList(3);
	QuickSortLinkedList(&L);
	//MergeSortLinkedList(&L);
	PrintSingleLinkList(L);
}
