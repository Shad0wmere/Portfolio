#include <iostream>
using namespace std;

int main() {
	int digitNum;
	const int range = 100;
	int counts[range] = { 0 };
	cout << "Please enter ten integers between 0 to 99: ";

	for (int j = 0; j < 10; ++j) {
		cin >> digitNum;
		if (digitNum < range && digitNum >= 0) {
			counts[digitNum]++;
		}
		else {
			cout << "Your number choice of " << digitNum << "must be between 0 to 99" << "\n";
			--j;
		}

	}

	for (int j = 0; j < range; ++j) {
		if (counts[j] > 0) {
			cout << j << " occurred " << counts[j] << (counts[j] == 1 ? " time" : " times") << "\n";
		}
	}
	return 0;
}



