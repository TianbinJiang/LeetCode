/* Given a string, determine if it is a palindrome, 
   considering only alphanumeric characters and ignoreing cases.
*/

#include <stdio.h>
#include <string>
#include <algorithm>
using namespace std;

bool ispalindrome(string s){
	int len = s.size();
	int front = 0;
	int end = len - 1;
	while(front < end) {
		char front_c = s.at(front);
		char end_c = s.at(end);
		if(isalpha(front_c) && isalpha(end_c)) {
			if(front_c == end_c || abs(front_c - end_c) == 32) {
				front++;
				end--;
			} else {
				return false;
			}
		}
		if(!isalpha(front_c)) front++;
		if(!isalpha(end_c)) end--;
	}
	return true;
}

/* --------TEST--------*/
int main(void) {
	string testString = "abccba";
	string testString1 = "abc";
	string testString2 = "ab,c,cba";
	bool test = ispalindrome(testString);
	bool test1 = ispalindrome(testString1);
	bool test2 = ispalindrome(testString2);
	printf("%d, %d, %d", test, test1, test2);
}
