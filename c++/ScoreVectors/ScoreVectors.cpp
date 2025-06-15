#include <iostream>
#include <vector>
using namespace std;

int main() {
	double avgScore;
	double score;
	int usersScores;
	double scoreTotal = 0.0;

	cout << "Please enter how many scores you want to enter: " << "\n";
	cin >> usersScores;

	while (usersScores <= 0) {
		cout << "Please enter a number from 0 to 100: " << "\n";
		cin >> usersScores;

	}

	vector<double> scores;

	for (int j = 0; j < usersScores; ++j) {
		cout << "Enter the next score: " << (j + 1) << ": ";
		cin >> score;
		scores.push_back(score);
		scoreTotal += score;
	}

	avgScore = scoreTotal / usersScores;
	cout << "The average score for this group of scores is: " << avgScore << "\n";
	return 0;


}