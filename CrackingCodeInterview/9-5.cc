/*
	Given a sorted array of strings which is interspersed with empty strings.
	write a method to find the location of a given string.
	example: 
		find "ball" in ["at", "", "",  "", "ball", "", "", "car", "", "","dad", "", ""]; return 4;
		find "ballcar" in above vector<string>, return 0;
*/
#include <stdio.h>
#include <vector>
#include <string>
using namespace std;

// Method 1: sort the array in 
int findTarget(vector<string> &input, string target){
	int len = input.size();
	if(len <= 0) return -1;
	int left = 0;
	int right = len - 1;
	while(left <= right){
		while(left <= right && input[right] == ""){
			right--;
		}
		if(left > right) return -1;
		int mid = left + (right - left) / 2;
		while(input[mid] == ""){
			++mid;
		}
		int r = input[mid].compare(target);
		if(r == 0) return mid;
		if(r < 0) left = mid + 1;
		else right = mid - 1;
	}
	return -1;
}

/*----TEST----*/

int main(void){
	vector<string> input;
	input.push_back("at"); input.push_back("");
	input.push_back(""); input.push_back("");
	input.push_back("ball"); input.push_back("");
	input.push_back(""); input.push_back("");
	input.push_back("car"); input.push_back("");
	input.push_back(""); input.push_back("dad");
	input.push_back(""); input.push_back("");
	int index = findTarget(input, "ballcar");
	printf("The index is %d\n", index);
}
