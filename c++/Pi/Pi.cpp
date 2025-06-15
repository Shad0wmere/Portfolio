#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    double calculationOfPi = 0.0;
    int num = 0;

    cout << "Please enter how many digits out you want to approximate the number of Pi: ";
    cin >> num;

    if (num <= 0) {
        cout << "Please enter a positive number that is greater than zero." << "\n";
        return 1;
    }

    for (int j = 0; j < 1000; ++j) {
        double digits = (j % 2 == 0 ? 1.0 : -1.0) / (2.0 * j + 1.0);
        calculationOfPi += digits;
    }

    calculationOfPi *= 4.0;
    cout << fixed << setprecision(num);
    cout << "Your choice of " << num << " digits, approximates to this Pi: " << calculationOfPi << "\n";

    return 0;

}

