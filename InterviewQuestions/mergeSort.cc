/* Practice MergeSort Algorithm */
#include <stdio.h>
#include <vector>
using namespace std;

void Merge(vector<int> s1, vector<int> s2, vector<int> &s) {
	int i = 0, j = 0;
	while(i + j < s.size()) {
		if(j == s2.size() || (i < s1.size() && s1[i] < s2[j])) {
			s[i + j] = s1[i];
			i = i + 1;
		} else {
			s[i + j] = s2[j];
			j = j + 1;
		}
	}
}

void MergeSort(vector<int> &inputs) {
	if(inputs.size() < 2) return;
	int len = inputs.size();
	int mid = len / 2;
	vector<int> sub_1(inputs.begin(), inputs.begin() + mid);
	vector<int> sub_2(inputs.begin() + mid, inputs.begin() + len);
	MergeSort(sub_1);
	MergeSort(sub_2);
	Merge(sub_1, sub_2, inputs);
}

int main(void){
	int array[] = {1, 2, 4, 3, 7, 8};
	vector<int> inputs(array, array + sizeof(array)/sizeof(array[0]));
	MergeSort(inputs);
	for(int i = 0; i < sizeof(array)/sizeof(array[0]); ++i) {
		printf("%d,", inputs[i]);
	}
	printf("\n");
}
