#include <iostream>
using namespace std;

const int row = 3;
const int column = 6;

int getHighestInRow(int[][column], int);
int getLowestInColumn(int[][column], int);

int main() {

	int aryValues[row][column] = { {1,2,3,4,5,6},
								   {7,8,11,12,13,14}, 
		                           {15,16,17,18,21,22} };

	int lookForRow = 2;
	int lookForColumn = 4;

	cout << "\n The highest in row is : " << getHighestInRow(aryValues, lookForRow) << "\n";
	cout << "\n The smallest in column is : " << getLowestInColumn(aryValues, lookForColumn) << "\n";
	cout << "\n\n";

	return 0;
}



int getHighestInRow(int array[][column], int r) {
	int biggest = array[r][0];

	for (int i = 1; i < column; i++) {
		if (array[r][i] > biggest)
			biggest = array[r][i];
	}

	return biggest;
}

int getLowestInColumn(int array[][column], int c) {
	int smallest = array[0][c];

	for (int i = 1; i < row; i++) {
		if (array[i][c] < smallest)
			smallest = array[i][c];
	}

	return smallest;
}