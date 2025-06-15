#include <iostream>
using namespace std;

int indexOfSmallestElement(int a[], int size) {
    int arrayIndex = 0;

    for (int j = 1; j < size; ++j) {
        if (a[j] < a[arrayIndex]) {
            arrayIndex = j;
        }
    }

    return arrayIndex;
}

int main() {
    const int testSize = 10;
    int testNums[testSize];

    cout << "Please enter ten integer numbers:\n";
    for (int j = 0; j < testSize; ++j) {
        cout << "Number " << (j + 1) << ": ";
        cin >> testNums[j];
    }
    int smallIndex = indexOfSmallestElement(testNums, testSize);
    cout << "\n Index of the smallest element is: " << smallIndex << "\n";
    cout << "Smallest element is: " << testNums[smallIndex] << "\n";

    return 0;
}