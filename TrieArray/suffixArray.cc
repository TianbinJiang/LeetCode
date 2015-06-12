//suffix array implementation. Time complexity: nlgn

/* 
Example: string BOBOCEL, len = 7

step 0: sort based on 2 ** 0 characters.
	 0 4 0 4 1 2 3
         B O B O C E L

step 1: sort based on 2 ** 1 characters.
         0 4 0 4 1 2 3
         B O B O C E L
	 O B O C E L $  "$ is added to the end with low priority"

step 2: sort based on 2 ** 2 characters.
	 0 5 1 6 2 3 4
         B O B O C E L
         O B O C E L $
         B O C E L $ $
         O C E L $ $ $

step 3: sort based on 2 ** 3 characters
	 0 5 1 6 2 3 4
         B O B O C E L
         O B O C E L $
         B O C E L $ $
         O C E L $ $ $
         C E L $ $ $ $
         E L $ $ $ $ $
         L $ $ $ $ $ $
         $ $ $ $ $ $ $
*/

#include <cstdio>
#include <cstring>
#include <algorithm>
using namespace std;

#define MAXN 65535
#define MAXLG 17

char A[MAXN];
struct entry{
	int nr[2], p;
} L[MAXN];

int P[MAXLG][MAXN], N, i, stp, cnt;

int cmp(struct entry a, struct entry b){
	return a.nr[0] == b.nr[0] ? (a.nr[1] < b.nr[1] ? 1 : 0) : (a.nr[0] < b.nr[0] ? 1 : 0);
}

int main(void){
	gets(A);
	for(N = strlen(A), i = 0; i < N; ++i){
		P[0][i] = A[i] - 'a';
	}
	for(stp = 1, cnt = 1; cnt >> 1 < N; stp++, cnt << 1){
		for(i = 0; i < N; ++i){
			// nr[0] is used to remember the former sorted arrays.
			L[i].nr[0] = P[stp - 1][i];
			// nr[1] is used to remember the new added arrays.
			// the connection of nr[0] and nr[1] equals to stp
      // sorting characters.
			L[i].nr[1] = i + cnt < N ? P[stp - 1][i + cnt] : -1;
			
			L[i].p = i;
		}
		sort(L, L + N, cmp);
		for(i = 0; i < N; i++){
			P[stp][L[i].p] = i > 0 && L[i].nr[0] == L[i - 1].nr[0] && L[i].nr[1] == L[i - 1].nr[1]? P[stp][L[i - 1].p] : i;
			printf("%d,", P[stp][L[i].p]);
		}
		return 0;
	}
}

