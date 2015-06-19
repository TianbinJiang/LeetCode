/* 
	How would you design a stack which, in addition to push and pop, also has a function which returns the minimum element? Push and pop and min should all operate in O(1) time.
*/
#include <stdio.h>
#include <stdlib.h>

// Method 1, stack store stack_node inside.

typedef struct stack_node{
	int value;
	struct stack_node* front; // linked to the former node to track the pop operation.
	struct stack_node* currentMin; // point to current minivalue node.
}

typedef struct stack{
	stack_node *top;
	int count;
}stack;

stack* InitStack(){
	stack *s = (stack*)malloc(sizeof(stack));
	s->top = NULL;
	s->count = 0;
	return s;
}

void push(stack* s, int value){
	if(s->top == NULL){
		s->top = (stack_node*)malloc(sizeof(stack_node));
		s->top->value = value;
		s->top->front = NULL;
		s->top->currentMin = s->top;
		(s->count) ++;
	}else {
		stack_node *tmp = (stack_node*)malloc(sizeof(stack_node));
		tmp->front = s->top;
		(s->count)++;
		if(value < (s->top->currentMin)->value){
			tmp->currentMin = tmp;
		} else {
			tmp->currentMin = s->top->currentMin;
		}
		s->top = tmp;
		s->top->value = value;
	}
}

void pop(stack *s){
	if(s->top == NULL){
		printf("stack is empty\n");
	} else {
		stack_node* tmp = s->top;
		s->top = s->top->front;
		free(tmp);
		(s->count)--;
	}
}

int min(stack *s){
	return s->top->currentMin->value;
}
