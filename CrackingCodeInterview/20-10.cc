/*
	Given two words of equal length that are in a dictionary, write a method to 
	transform one word into another word by changing only one letter at a time.
	The new word you get in each step must be in the dictionary.
	EXAMPLE:
	Input: hit, cog
	DICT: hot, dot, dog, lot, log
	OUTPUT: hit->hot->dot->dog->cog
*/

#include <stdio.h>
#include <string>
#include <unordered_set>
#include <vector>
#include <deque>
#include <iostream>
using namespace std;

int Transform(string start, string end, unordered_set<string> &dict){
	if(start.size() != end.size()) return 0;
	deque<string> q;
	unordered_set<string> added;
	q.push_back(start);
	added.insert(start);
	int ret = 0;
	int lev1 = 1, lev2 = 0;
	while(!q.empty()){
		string s = q.front();
		q.pop_front();
		--lev1;

		for(int i = 0; i < s.size(); ++i){
			for(int j = 0; j < 26; ++j){
				string t = s;
				t[i] = 'a' + j;
				if(t != s){
					if(t == end){
						return ret + 2;
					}
					if(dict.find(t) != dict.end() && added.find(t) == added.end()){
						q.push_back(t);
						added.insert(t);
						++lev2;
						cout << t << endl;
					}
				}
			}
		}
		if(lev1 == 0){
			++ret;
			lev1 = lev2;	
			lev2 = 0;
		}
	}
	return 0;
}

/*----TEST---*/
int main(void){
	unordered_set<string> dict = {"hot", "dot", "dog", "lot", "log", "cat", "hug"};
	string start = "hit";
	string end = "cog";
	int trans = Transform(start, end, dict);
	printf("The transform times is : %d\n", trans);
}
