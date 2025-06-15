#include <iostream>
#include <map>
#include <string>
#include <cctype>

using namespace std;

int main() {
	string userInput;
	map<char, int> eachOccurence;
	cout << "Please enter a line of text: ";
	getline(cin, userInput);

	for (char charLtr : userInput) {
		if (isalpha(charLtr)) {
			charLtr = tolower(charLtr);
			eachOccurence[charLtr]++;
		}

	}

	for (const auto& pair : eachOccurence) {
		cout << pair.second << " " << pair.first << "\n";
	}
	return 0;
}
