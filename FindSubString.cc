// You are given a string S and a list of words, L, that are all of the same length
// Find all starting indices of substring(s) in S that is a contatenation of each word
// in L exactly once and without any intervening characters.

#include <stdio.h>
#include <vector>
#include <string>
#include <map>

using namespace std;

vector<int> findSubString(string S, vector<string> & L) {
	map<string, int> words;  // map L words
	map<string, int> curStr;
	for(int i = 0; i < L.size(); ++i)
		++words[L.at(i)];
	int N = L.size();
	vector<int> ret;
	if(N < 0) return ret;
	int M = L.at(0).size(); // each word size;
	// times to loop through
	for(int i = 0; i < (int)S.size() - N*M; ++i) {
		curStr.clear();
		int j;
		// Loop through each N words.
		for(j = 0; j < N; ++j) {
			string w = S.substr(i + j * M, M);
			if(words.find(w) == words.end())
				break;
			++curStr[w];
			if(curStr[w] > words[w])
				break;
		}
		if(j == N) 
			ret.push_back(i);
	}
	return ret;
}

int main(void) {
	string S = "Thaaaismonkstudwordappp";
	const char* args[] = {"monk", "stud"};
	vector<string> L(args, args + 2);
	vector<int> result = findSubString(S, L);
	for(int i = 0; i < result.size(); ++i)
		printf("%d\n", result[i]);
	return 0;
}
