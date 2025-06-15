#include <iostream>
using namespace std;

int main() {
	double pkgWeight;
	cout << "Please enter weight of your package, (for example, for 2 Kilograms enter 2): ";
	cin >> pkgWeight;
	while (pkgWeight > 20 || pkgWeight <= 0) {
		if (pkgWeight > 20) {
			cout << "Error: package weight cannot be more than 20 kilograms. \n" << "Please enter weight again: ";
			cin >> pkgWeight;
		}
		else {
			cout << "Error: package weight cannot be 0 (zero) or less. \n" << "Please enter weight again: ";
			cin >> pkgWeight;
		}
	}
	double pkgDist;
	cout << "Please enter how far in miles the distance for shipping is: ";
	cin >> pkgDist;
	while (pkgDist > 3000 || pkgDist < 10) {
		if (pkgDist > 3000) {
			cout << "Error: distance cannot be greater than 3,000 miles. \n" << "Please enter distance to be shipped again: ";
			cin >> pkgDist;
		}
		else {
			cout << "Error: distance must be at least 10 miles. \n" << "Please enter distance to be shipped again: ";
			cin >> pkgDist;

		}

	}
	double pkgCharge;
	if (pkgWeight > 10 && pkgWeight < 20) {
		pkgCharge = 4.80 * (pkgDist / 500.0);
	}
	else if (pkgWeight > 6 && pkgWeight <= 10) {
		pkgCharge = 3.70 * (pkgDist / 500.0);
	}
	else if (pkgWeight > 2 && pkgWeight <= 6) {
		pkgCharge = 2.20 * (pkgDist / 500.0);
	}
	else {
		pkgCharge = 1.10 * (pkgDist / 500.0);
	}
	cout << "\n The weight to be shipped is: " << pkgWeight;
	cout << "\n The distance to be shipped is " << pkgDist;
	cout << "\n Your charges for shipping based on weight and distance are:   $" << pkgCharge;
	return 0;


}