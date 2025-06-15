#include <iostream>

using namespace std;

double avgScore(double* userTestScores, int counter) {
	double total = 0.0;
	for (int j = 0; j < counter; ++j) {
		total += *(userTestScores + j);
	}
	return (counter > 0) ? (total / counter) : 0.0;

}

int main() {
	int userScores = 0;
	double* userTestScores = nullptr;
	cout << "Please enter how many test scores to be entered: ";
	cin >> userScores;

	if (userScores <= 0) {
		cout << "You must have at least 1 test score. Rerun and try again.";
		return 1;
	}

	userTestScores = new double[userScores];
	cout << "Please enter the test scores one by one: " << "\n";
	
	for (int j = 0; j < userScores; ++j) {
		cout << "Score number " << (j + 1) << " for test score " << (j + 1) << " is" << " : ";
		cin >> *(userTestScores + j);
	}

	double avg = avgScore(userTestScores, userScores);
	cout << "Average of your test scores entered is: " << avg << "\n";
	return 0;

}