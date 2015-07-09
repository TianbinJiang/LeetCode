#include <stdio.h>
#include <string>
#include <stack>
using namespace std;

bool IsOPTR(char s){
	if(s == '#' || s == '(' || s == ')' || s == '+' || s == '-' || s == '*' || s == '/') return true;
	else return false;
}

char Precede(char a, char b){
	int i, j;
	char pre[][7] = {
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
		case '#': j = 6; break;
	}
	return pre[i][j];
}

char Operate(char a, char theta, char b){
	if(theta == '-') return char(int(a - '0') - int (b - '0') + '0');
	else if(theta == '+') return char(int(a - '0') + int(b - '0') + '0');
	else if(theta == '*') return char(int(a - '0') * int(b - '0') + '0');
	else return char(int(a - '0') / int(b - '0') + '0');
}

int calculate(string s){
	int len = s.size();
	int i = 0;
	// not start from space.
/*
	while(i < len){
		if(s[i] == ' '){
			i++;
		} else {
			break;
		}
	}
*/
	stack<char> OPTR;
	OPTR.push('#');
	stack<char> OPND;
	char tmp = OPTR.top();
	while(s[i] != '#' || (tmp != '#')){
		printf("i: %d\n", i);
		//if(s[i] == ' ') {i++; continue;}
		if(!IsOPTR(s[i])){
			OPND.push(s[i]);
			i++;
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

					char b = OPND.top();
					OPND.pop();

					char a = OPND.top();
					OPND.pop();

					OPND.push(Operate(a, theta, b));
					break;
			} // swith
		} // else	 
	printf("OPTR: %c\n", OPTR.top());
	printf("OPND: %d\n", OPND.top() - '0');
	tmp = OPTR.top();
	} // while

	printf("OPND: %d\n", OPND.top() - '0');
	return int(OPND.top() - '0');
}

int main(void){
	string test = "4*3#";
	printf("the total value is : %d\n", calculate(test));
}
