#include <iostream>
#include <cstdlib> 
#include <ctime> 

using namespace std;

int main() {
	srand(time(0));
	int userInput, usersOutput;

	do {
		cout << "Please select a number between 1 to 25. ";
		cin >> userInput;

		usersOutput = rand() % 25; 
		if (usersOutput == 0) 
			usersOutput++;

		if (userInput == usersOutput)
			cout << "Your answer is correct. Congratulations.\n";
		else if (userInput > usersOutput)
			cout << "Your choice is too high, please try again. Correct answer was " << usersOutput << "\n";
		else
			cout << "Your choice is too low, please try again. Correct answer was " << usersOutput << "\n";


	} while (userInput != usersOutput);

	return 0;


}