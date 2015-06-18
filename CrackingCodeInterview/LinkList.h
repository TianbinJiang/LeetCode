// The LinkList only has integers.

typedef struct node{
	int element;
	struct node* next;
}LNode, *LinkList;

LinkList CreateSingleLinkList(int Length);
void PrintSingleLinkList(LinkList L);
LinkList DeleteNode(LinkList L, int data);
