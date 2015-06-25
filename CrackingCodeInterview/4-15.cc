/*
	Flatten binary tree to linked list.
	for example:
	Given:
			1
		/		\
		2		5
	/		\		\
	3		4			6
changed into:
	1
	\
		2
			\
				3
					\
						4
							\
								5
									\
										6
*/

// Nothing is interesting....
BiTNode* LeftMost(BiTNode* t){
	while(t && t->right) t = t->right;
	return t;
}

void treeWalk(BiTree root){
	BiTNode* n = root;
	while(n){
		if(n->lchild){
			BiTNode* tmp = RightMost(n->lchild);
			tmp->rchild = n->rchild;
			n->rchild = n->lchild
			n->lchild = NULL;
		}
	n = n->right;
}
