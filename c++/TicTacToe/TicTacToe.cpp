#include <iostream>
using namespace std;
const int range = 3;
char gameBoard[range][range];

//make board
void makeBoard() {
	for (int j = 0; j < range; ++j)
		for (int k = 0; k < range; ++k)
			gameBoard[j][k] = '*';
}

//for tie
bool isATie() {
	for (int j = 0; j < range; ++j)
		for (int k = 0; k < range; ++k)
			if (gameBoard[j][k] == '*')
			return false;
  return true;
}

//if win
bool isAWin(char player) {
	for (int i = 0; i < range; ++i) {
		if ((gameBoard[i][0] == player && gameBoard[i][1] == player && gameBoard[i][2] == player)
			|| (gameBoard[0][i] == player && gameBoard[1][i] == player && gameBoard[2][i] == player))
			return true;
	}
		if ((gameBoard[0][2] == player && gameBoard[2][0] == player && gameBoard[1][1] == player)
			|| (gameBoard[0][0] == player && gameBoard[2][2] == player && gameBoard[1][1] == player))
			return true;
		return false;

}

//output board
void showTheBoard() {
	cout << "\n" << "Your current game board is: " << "\n";
	for (int j = 0; j < range; ++j) {
		for (int k = 0; k < range; ++k)
			cout << gameBoard[j][k] << ' ';
		cout << "\n";
	}
}

//is move ok
bool moveOK(int row, int colum) {
	return row < range && row >= 0 && gameBoard[row][colum] == '*' && colum < range && colum >= 0;
}

int main() {
	bool endGame = false;
	char player = 'X';
	int colum;
	int row;
	makeBoard();
	while(!endGame) {
	showTheBoard();
	cout << "Current player: " << (player == 'X' ? "1 (X's)" : "2 (O's)") << " " << player << " " << "Please enter row and column (0 to 2..for example: '1 2') ";
	cin >> row >> colum;
	if (!moveOK(row, colum)) {
		cout << "Move not allowed, please try again" << "\n";
		continue;
	}

	gameBoard[row][colum] = player;
	if (isAWin(player)) {
		showTheBoard();
		cout << "You," << (player == 'X' ? " Player1...aka - " : "Player2...aka - ") << player << ",won the game." << "\n";
		endGame = true;
	}
	else if (isATie()) {
		showTheBoard();
		cout << "Game ends with a tie" << "\n";
		endGame = true;
	}
	else {
		player = (player == 'X') ? 'O' : 'X';
	}
}
return 0;
}