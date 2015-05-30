/* Given a non-negative integers a1, a2, a3.. an. where each represent
   a point at coordinate (i, an), n vertical draw such that two end point
   of line i at (i, ai) and (i, 0). Find two lines, which together with 
   x-axis forms a container, such that the container contains the most water.
*/

#include <stdio.h>
#include <vector>
using namespace std;

int max(int a, int b) {
	return a > b ? a : b;
}

int maxArea(vector<int> &height) {
	int maxarea = 0;
	int i = 0;
	int j = height.size() - 1;
	while(i < j){
		int area = (j - i) * min(height[i], height[j]);
		maxarea = max(area, maxarea);
		
		if(height[i] <= height[j]) i++;
		else j--;
	}
	return maxarea;
}

/* ----- TEST------*/

int main(void) {
	int array[] = {1, 2, 1};
	vector<int> testArray(array, array + sizeof(array)/sizeof(array[0]));
	int maxarea = maxArea(testArray);
	printf("the maxArea is %d\n", maxarea);
}
