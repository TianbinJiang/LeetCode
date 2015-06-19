// Stack data structure.
// Erh...this is not cpp at all....anyway....good to work first
#include <stdlib.h>
#define STACK_INIT_SIZE 100
#define STACKINCREMENT 10

typedef char ElemType;

typedef struct {
	ElemType *base;
	ElemType *top;
	int stacksize;
}sqStack;

void InitStack(sqStack *S);
void Push(sqStack *S, ElemType e);
void Pop(sqStack *S, ElemType *e)
