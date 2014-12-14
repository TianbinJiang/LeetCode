// Operations of LinkedList

typedef int ElemType;
typedef struct node{
	ElemType data;
	struct node* next;
}ListNode, *LinkList;

ListNode* CreateList(int n);

void PrintList(ListNode* L);
