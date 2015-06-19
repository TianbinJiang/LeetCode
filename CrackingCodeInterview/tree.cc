#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "tree.h"
using namespace std;

void CreateBiTree(BiTree *T){
	char c;
	scanf("%c", &c);
	if(c == ' ') *T = NULL;
	else{
		*T = (BiTNode*)malloc(sizeof(BiTNode));
		(*T)->data = c;
		CreateBiTree(&((*T)->lchild));
		CreateBiTree(&((*T)->rchild));
	}
}

void visit(char c, int level){
	printf("level: %d : %c\n", level, c);
}

void PreOrderTraverse(BiTree T, int level){
	if(T){
		visit(T->data, level);
		PreOrderTraverse(T->lchild, level + 1);
		PreOrderTraverse(T->rchild, level + 1);
	}
}

int main(void){
	BiTree T;
	CreateBiTree(&T);
	PreOrderTraverse(T, 0);
}
