#include <stdio.h>
#include <stdlib.h>
#include "list.h"
using namespace std;

ListNode* CreateList(int n) {
	LinkList p, r, list = NULL;
	if(n < 0) return NULL;
	int ch;
	for(int i = 1; i <= n; ++i) {
		scanf("%d", &ch);
		p = (LinkList)malloc(sizeof(ListNode));
		p->data = ch;
		p->next = NULL;
		if(list == NULL)
			list = p;
		else
			r->next = p;
		r = p;
	}
	return list;
}

void PrintList(ListNode* L) {
	while(L){
		printf("%d", L->data);
		L = L->next;
	}
	printf("\n");
}
