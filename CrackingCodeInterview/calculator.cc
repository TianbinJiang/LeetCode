#include <stdio.h>
#include <string>
#include <stack>
using namespace std;

bool IsOPTR(unsigned char s){
	if(s == '#' || s == '(' || s == ')' || s == '+' || s == '-' || s == '*' || s == '/' || s == '\0') return true;
	else return false;
}

unsigned char Precede(unsigned char a, unsigned char b){
	int i, j;
	// set up a precedence table
	unsigned char pre[][7] = {
		{'>', '>', '<', '<', '<', '>', '>'},
		{'>', '>', '<', '<', '<', '>', '>'},
		{'>', '>', '>', '>', '<', '>', '>'},
		{'>', '>', '>', '>', '<', '>', '>'},
		{'<', '<', '<', '<', '<', '=', '0'},
		{'>', '>', '>', '>', '0', '>', '>'},
		{'<', '<', '<', '<', '<', '0', '='}};
	switch(a){
		case '+': i = 0; break;
		case '-': i = 1; break;
		case '*': i = 2; break;
		case '/': i = 3; break;
		case '(': i = 4; break;
		case ')': i = 5; break;
		case '#': i = 6; break;
	}
	switch(b){
		case '+': j = 0; break;
		case '-': j = 1; break;
		case '*': j = 2; break;
		case '/': j = 3; break;
		case '(': j = 4; break;
		case ')': j = 5; break;
		case '\0': j = 6; break;
	}
	return pre[i][j];
}

int Operate(int a, char theta, int b){
	if(theta == '-') return (a - b);
	else if(theta == '+') return (a + b);
	else if(theta == '*') return (a * b);
	else return (a / b);
}

// This method can only calcualte 1-9 numbers as input.
int calculate(string s){
	int len = s.size();
	int i = 0;

	// stack for Operators, use # to indicate the bottom of stack.
	stack<char> OPTR;
	OPTR.push('#');

	// we would want to store integers in OPND, since char type is way too small.
	stack<int> OPND;
	char tmp = OPTR.top();
	while(s[i] != '\0' || (tmp != '#')){
		printf("i: %d\n", i);
		if(s[i] == ' ') {i++; continue;}
    else if(!IsOPTR(s[i])){
			int sum = int(s[i] - '0');
			int j = i + 1;

			// what if the number is more than one digits.
			while(s[j] != '\0' && s[j] != ' ' && !IsOPTR(s[j])){
				sum = sum * 10 + int(s[j] - '0');
				j++;
			}
			OPND.push(sum);
			i = j;
			continue;
		} else {
			switch(Precede(OPTR.top(), s[i])) {
				case '<':
					OPTR.push(s[i]);
					i++;
					break;
				case '=':
					OPTR.pop();
					i++;
					break;
				case '>':
					char theta = OPTR.top();
					OPTR.pop();

					int b = OPND.top();
					OPND.pop();

					int a = OPND.top();
					OPND.pop();

					OPND.push(Operate(a, theta, b));
					break;
			} // swith
		} // else	 
	tmp = OPTR.top();
	} // while

	return OPND.top();
}

int main(void){
	string test = "1 + 10*2";
	printf("the total value is : %d\n", calculate(test));
}
