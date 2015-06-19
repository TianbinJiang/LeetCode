// Simple tree datastructure implementation

typedef char ElemType;

typedef struct BiTNode{
	struct BiTNode* rchild;
	struct BiTNode* lchild;
	ElemType data;
}BiTNode, *BiTree;

void CreateBiTree(BiTree * T);
void visit(char c, int level);
void PreOrderTraverse(BiTree T, int level);
