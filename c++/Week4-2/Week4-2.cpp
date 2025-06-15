#include <iostream>

using namespace std;

int* arrayReverse(const int* arrayInt, int arraySize) {
	int* backward = new int[arraySize];
	for (int j = 0; j < arraySize; ++j) {
		*(backward + j) = *(arrayInt + (arraySize - 1 - j));
	}
	return backward;
}
int main() {
	int* backward = nullptr;
	int* firstArray = nullptr;
	int arraySize;
	cout << "Please enter how many elements you want in your array: ";
	cin >> arraySize;
	if (arraySize <= 0) {
		cout << "Array cannot be empty. Array must have at least 1 value. Try again";
		return 1;
	}

	firstArray = new int[arraySize];
	cout << "Please enter " << arraySize << " integers: " << "\n";
	for (int j=0; j < arraySize; ++j) {
		cout << "Array element number " << (j + 1) << " : ";
		cin >> *(firstArray + j);
	}

	backward = arrayReverse(firstArray, arraySize);
	cout << "The first array is: ";
	for (int j=0; j < arraySize; ++j) {
		cout << *(firstArray + j) << " ";
	}
	cout << "The array backwards or in reverse is: ";
	for (int j = 0; j < arraySize; ++j) {
		cout << *(backward + j) << " ";
	}
	cout << "\n";
	return 0;

}