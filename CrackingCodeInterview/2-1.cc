/*
	Write code to remove duplicates from an unsorted linked list.
	FOLLOW UP:
	how would you solve this problem if a temporary buffer is not allowed?
*/

#include <vector>
#include <algorithm>
#include "LinkList.h"
using namespace std;

// Method 1: temporary buffer is allowed.

void RemoveDuplicates(LinkList *L){
	// a vector used to detect deduplicates
	vector<int> data;
	if(!*L || !(*L)->next) return;
	LinkList head = *L, prev = *L, current = *L;
	while(current){
		if(find(data.begin(), data.end(), current->element) != data.end()){
			prev->next = current->next;
			current = current->next;
		} else {
			data.push_back(current->element);
			prev = current;
			current = current->next;
		}
	}
	// release the memory space.
	// clear method will destory all the objects but will not free the memory.
	// This will create an empty vector with no memory allocated and swap it with
	// tempVector, effectively deallocating the memory.
	vector<int>().swap(data);
}

// Method 2: No extra temporary buffer allowed.
// If the inputs are chacters, we can just bitmap.
// If the inputs are numbers, we need to set two pointers.
void RemoveDuplicates_1(LinkList* L){
	if(!*L || !(*L)->next) return;
	LinkList prev = *L, current = prev->next;
	while(current != NULL){
		LinkList runner = *L;
		while(runner != current){
			if(runner->element == current->element){
				LinkList tmp = current->next;
				prev->next = tmp;
				current = tmp;
				break;
			}
			runner = runner->next;
		}
		if(runner == current){
			prev = current;
			current = current->next;
		}	
	}	
}


/*----TEST----*/

int main(void){
	LinkList L = CreateSingleLinkList(2);
	RemoveDuplicates_1(&L);
	//RemoveDuplicates(&L);
	PrintSingleLinkList(L);
}
