#include <iostream>
using namespace std;


	// function for computer
	int cpuTurn(int toothpicks, int personPlayer, int cpuPlayer) {
		if (toothpicks > 4) {
			cpuPlayer = 4 - personPlayer;
		}
		else if (toothpicks <= 4 && toothpicks >= 2) {
			cpuPlayer = toothpicks - 1;
		}
		else { cpuPlayer = 1; }
		return cpuPlayer;
	}

	int main() {
		int cpuPlayer = 0;
		int toothpicks = 23;
		int personPlayer = 0;

	cout << "*** Game of 23 is a game that starts with a pile of 23 toothpicks. ***" << "\n";
	cout << "*** Each turn each player can choose 1, 2, or 3 toothpicks.        ***" << "\n";
	cout << "*** You lose if you have the last toothpick.                       ***" << "\n";

	while (toothpicks > 1) {
		cout << "\n" << "The number of toothpicks left are: " << toothpicks << "\n";	

		do {
			cout << "It is your turn. Please type in 1, 2, or 3 toothpicks that you will take as 1, 2, or 3: ";
			cin >> personPlayer;
			if (personPlayer > toothpicks || personPlayer > 3 || personPlayer < 1) {
				cout << "Please enter a number from 1 to 3. Cannot be more than " << toothpicks << " : ";
			}
		} while (personPlayer > toothpicks || personPlayer > 3 || personPlayer < 1);


		toothpicks -= personPlayer;
		if (toothpicks == 0) {
			cout << " You lost." << "\n";
			break;
		}
		else if (toothpicks == 1) {
			cout << "You win. " << "\n";
			break;
		}

		cpuPlayer = cpuTurn(toothpicks, personPlayer, cpuPlayer);
		toothpicks -= cpuPlayer;

		cout << "The computer took: " << cpuPlayer << " number of toothpicks." << "\n";
		cout << "Total number of toothpicks left is: " << toothpicks << "\n";
		if (toothpicks == 1) {
			cout << " Computer wins.";
			break;
	 }

	}
	cout << "End of game." << "\n";
	return 0;

}