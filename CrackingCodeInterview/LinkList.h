// The LinkList only has integers.

typedef struct node{
	char element;
	struct node* next;
}LNode, *LinkList;

LinkList CreateSingleLinkList(int Length);
void PrintSingleLinkList(LinkList L);
LinkList DeleteNode(LinkList L, int data);
LinkList Append(LinkList *L, int data);
