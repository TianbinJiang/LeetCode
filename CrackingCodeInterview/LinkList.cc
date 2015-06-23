#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "LinkList.h"

using namespace std;

LinkList CreateSingleLinkList(int Length){
	LinkList p, r, list = NULL;
	int e;
	for(int i = 0; i < Length; ++i){
		cin >> e;
		p = (LinkList) malloc(sizeof(LNode));
		p->element = e;
		p->next = NULL;
		if(!list)
			list = p;
		else
			r->next = p;
		r = p;
	}
	return list;          
}

void PrintSingleLinkList(LinkList L){
	if(!L) return;
	LinkList head = L;
	while(head){
		printf("%c ", head->element);
		head = head->next;
	}
	printf("\n");
}

LinkList DeleteNode(LinkList L, int target){
	if(!L) return NULL;
	LinkList head = L;
	if(head->element == target){
		return head->next;
	}
	while(head->next != NULL){
		if((head->next)->element == target){
			head->next = head->next->next;
			return L;
		}
		head = head->next;
	}
}

LinkList Append(LinkList *L, int data){
	LinkList node = (LinkList)malloc(sizeof(LNode));
	node->element = data;
	node->next = NULL;
	if(!*L){
		*L = node;
	}else{
		LinkList prev = *L;
		LinkList curr = prev->next;	
		while(curr){
			prev = curr;
			curr = curr->next;
		}
		curr = node;
		prev->next = curr;
	}
	return *L;
}

/* test

int main(void){
	int len = 0;
	printf("create a %d linked list\n", len);
	//LinkList L = CreateSingleLinkList(len);
	//PrintSingleLinkList(L);
	LinkList L = NULL;
	printf("\n");
	Append(&L, 2);
	PrintSingleLinkList(L);
}

*/
