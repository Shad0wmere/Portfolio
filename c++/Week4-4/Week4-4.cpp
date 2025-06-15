#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int** makearray2D(int row, int colums) {
	int** array2D = new int* [row];

	for (int j = 0; j < row; ++j) {
		*(array2D + j) = new int[colums];

		for (int k = 0; k < colums; ++k) {
			*(*(array2D + j) + k) = rand() % 100;
		}

	}
	return array2D;
}

void showTheArray(int** array2D, int row, int colums) {
	for (int j = 0; j < row; ++j) {
		for (int k = 0; k < colums; ++k) {
			cout << *(*(array2D + j) + k) << "\t";
		}
		cout << "\n";
	}
}

int main() {

	int colums;
	int row;
	cout << "please enter the number of rows for array: ";
	cin >> row;
	cout << "Please enter the number of columns for array: ";
	cin >> colums;
	if (colums <= 0 || row <= 0) {
		cout << "Rows and columns selection not allowed.";
		return 1;
	}
	srand(static_cast<unsigned int>(time(0)));
	int** array1 = makearray2D(row, colums);

	showTheArray(array1, row, colums);
	return 0;


}