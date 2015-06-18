/*
	Implement a method to find the nth to the last element of a singly linked list
*/

#include <stdio.h>
#include "LinkList.h"
using namespace std;

int FindNthToLast(LinkList L, int n){
	if(!L) return NULL;
	LinkList prev = L;
	LinkList current = L;
	int i = 0;
	// in case n is larger than the whole length
	while(i < n && prev){
		prev = prev->next;
		i++;
	}
	// in case prev reach the end
	//if(!prev) return NULL;
	while(prev && prev->next){
		current = current->next;
		prev = prev->next;
	}
	return current->element;
}

/*----TEST----*/
int main(void){
	LinkList L = CreateSingleLinkList(4);
	PrintSingleLinkList(L);
	int a = FindNthToLast(L,1);
	printf("the nth to last is : %d\n", a);
	
}
