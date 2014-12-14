//Implement a function string balanceParanthesis(string s);
// which given a string s consisting of some paranthesis return
// a string s1 in which parenthesis are balanced and differences between
// s and s1 are minium.
// Eg: "(ab(xy)u)2)" -> "(ab(xy)u)2" ")))(((" -> ""
// Interview Question from Facebook

#include <string>
#include <stdio.h>
using namespace std;

string balance(const string& input) {
	string balanced;
	int len = input.size();
	int last = len - 1;
	int par = 0;
	for(int i = 0; i < len; ++i) {
		if(input[i] == ')') {
			if(par > 0) {
				--par;
				balanced += input[i];
			}
		}
		else if(input[i] == '(') {
			++par;
			while(i < last) {
				if(input[last] == ')') {
					balanced += input[i];
					break;
				}
				--last;
			}
		}
		else
			balanced += input[i];
		}
	return balanced;
}

int main(void) {
	string S = "(ab(xy)u)2)";
	string balanced = balance(S);
	printf("%s", balanced.c_str());
}
