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

unsigned char Operate(unsigned char a, unsigned char theta, unsigned char b){
	if(theta == '-') return unsigned char(int(a - '0') - int (b - '0') + '0');
	else if(theta == '+') return unsigned char(int(a - '0') + int(b - '0') + '0');
	else if(theta == '*') return unsigned char(int(a - '0') * int(b - '0') + '0');
	else return unsigned char(int(a - '0') / int(b - '0') + '0');
}

// This method can only calcualte 1-9 numbers as input.
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
	stack<unsigned char> OPTR;
	OPTR.push('#');
	stack<unsigned char> OPND;
	unsigned char tmp = OPTR.top();
	// here is or not add.....erh! neither equals to 1, it fails.
	while(s[i] != '\0' || (tmp != '#')){
		printf("i: %d\n", i);
		if(s[i] == ' ') {i++; continue;}
    else if(!IsOPTR(s[i])){
			int sum = int(s[i] - '0');
			int j = i + 1;
			while(s[j] != '\0' && s[j] != ' ' && !IsOPTR(s[j])){
				sum = sum * 10 + int(s[j] - '0');
				j++;
			}
			OPND.push(unsigned char(sum + '0'));
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
					unsigned char theta = OPTR.top();
					OPTR.pop();

					unsigned char b = OPND.top();
					OPND.pop();

					unsigned char a = OPND.top();
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
	string test = "1 + 10*2";
	printf("the total value is : %d\n", calculate(test));
}
