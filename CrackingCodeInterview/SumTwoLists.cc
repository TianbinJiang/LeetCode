/*
	you have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.
	EXAMPLE:
	input: (3->1->5) + (5->9->2);
	output: 8->0->8
*/
#include <stdio.h>
#include "LinkList.h"
#include <stdlib.h>

using namespace std;

LinkList SumofTwoLists(LinkList *L, LinkList *M){
	if(!*L) return *M;
	if(!*M) return *L;
	int carry = 0;
	LinkList Lprev = *L, LHead = *L;
	LinkList Mprev = *M, MHead = *M;
	while(LHead && MHead){
		int sum = LHead->element + MHead->element + carry;
		LHead->element = sum % 10;
		carry = sum / 10;
		Lprev = LHead;
		Mprev = MHead;
		LHead = LHead->next;
		MHead = MHead->next;
	}
	// if M ends first
	while(LHead){
		int sum = LHead->element + carry;
		carry = sum / 10;
		LHead->element = sum % 10;
		Lprev = LHead;
		LHead = LHead->next;
	}
	
	// if L ends first
	if(MHead){
		Lprev->next = MHead;
		LHead = MHead;
		while(LHead){
			int sum = LHead->element + carry;
			LHead->element = sum % 10;
			carry = sum / 10;
			Lprev = LHead;
			LHead = LHead->next;
		}
	}
	
	// if the carry is not 0 after L reaches the end
	if(carry){
		printf("the carray is not 0\n");
		LinkList tail = (LinkList) malloc(sizeof(LNode));
		(tail)->element = carry;
		(tail)->next = NULL;
		Lprev->next = tail;
		printf("last element: %d\n", (tail)->element);
	}
	return *L;
}


/*-----TEST----*/
int main(void){
	LinkList L = CreateSingleLinkList(1);
	LinkList M = CreateSingleLinkList(2);
	LinkList Sum = SumofTwoLists(&L, &M);
	PrintSingleLinkList(Sum);
}
