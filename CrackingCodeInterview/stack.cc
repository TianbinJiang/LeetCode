#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

void InitStack(sqStack *s){
	s->base = (ElemType*)malloc(sizeof(ElemType) * STACK_INIT_SIZE);
	if(!s->base) exit(0);
	s->top = s->base;
	s->stacksize = STACK_INIT_SIZE;
}

void Push(sqStack *s, ElemType e){
	if(s->top - s->base >= s->stacksize){
		s->base = (ElemType*)realloc(s->base, (s->stacksize + STACKINCREMENT) * sizeof(ElemType));
		if(!s->base) exit(0);
		s->top = s->base + s->stacksize;
		s->stacksize = s->stacksize + STACKINCREMENT;
	}
	*(s->top) = e;
		s->top ++;
}

void Pop(sqStack *s, ElemType* e){
	if(s->top == s->base) return;
	*e = *--(s->top);
}

/*----TEST----*/

int main(void){
	sqStack s;
	InitStack(&s);
}
