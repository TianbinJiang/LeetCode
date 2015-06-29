/*
	A circus is designing a tower routine consisting of people standing on top one another
	shoulder. For practical and aesthestic reasons, each person much be both shorter
	and lighter than the person below him or her. Given the heights and weights of each
	person in the circus, write a method to compute the largest possible number of people
	in such a tower.
	example:
	input(ht, wt): (65, 100), (70, 150) (56, 90) (75, 190) (60, 95) (68, 110)
	output: The longest tower is length 6 and includes from top to bottom: 
	(56, 90) (60, 95) (68, 110) (70, 150) (75, 190)
*/
#include <stdio.h>
#include <vector>
#include <algorithm>
using namespace std;

struct Person{
	int height;
	int weight;
	Person(): height(0), weight(0) {}
	Person(int h, int w): height(h), weight(w) {}
};

struct sorter{
	bool operator()(Person a, Person b){
		return a.height < b.height;
	}
};


void printVector(vector<Person> input){
	for(int i = 0; i< input.size(); ++i){
		printf("%d, %d\n", input[i].height, input[i].weight);
	}
	printf("\n");	
}

void FillNextSeq(int start, vector<Person> &input, vector<Person>&result){
	if(start < input.size()){
		int maxWeight = input[start].weight;
		for(int i = start; i < input.size(); i++){
			if(input[i].weight >= maxWeight){
				result.push_back(input[i]);
				maxWeight = input[i].weight;
			}
		}
	}
}

vector<Person> FindMaxSeq(vector<Person> &input){
	int len = input.size();
	vector<Person> maxSeq;
	int maxlen = 0;
	int i = 0;
	while(i < len){
		vector<Person> result;
		FillNextSeq(i, input, result);
		if(result.size() >= maxlen){
			maxSeq = result;
			maxlen = result.size();
		}
		++i;
	}
	return maxSeq;
}

vector<Person> CircusBuild(vector<Person> &input){
	vector<Person> result;
	int len = input.size();
	if(len <= 1) return result;
	sort(input.begin(), input.end(), sorter());
	printf("after sorting:\n");
	printVector(input);
	// Weight LCB
	result = FindMaxSeq(input);
	printVector(result);
}

/*---TEST----*/

int main(void){
	vector<Person>input;
	input.push_back({65, 100});
	input.push_back({70, 150});
	input.push_back({56, 110});
	input.push_back({75, 190});
	CircusBuild(input);
}
