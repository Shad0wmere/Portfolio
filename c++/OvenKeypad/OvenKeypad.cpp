#include <iostream>
using namespace std;

// containsDigit function
bool containsDigit(int keyPressed, int validKey) {
    while (keyPressed > 0) {
        if (keyPressed % 10 == validKey) {
            return true;
        }
        keyPressed /= 10;
    }
    return false;
}

// for the broken keys
bool containsBrokenDigit(int keyPressed) {
    return containsDigit(keyPressed, 1) || containsDigit(keyPressed, 4) || containsDigit(keyPressed, 7);
}

int main() {
    int usersTemp;

    // user's temp input
    cout << "Please type in your chosen temperature (0 - 999): ";
    cin >> usersTemp;

    if (usersTemp < 0 || usersTemp > 999) {
        cout << "Choice not valid. Your temperature has to be between 0 and 999." << endl;
        return 1;
    }

    // if temperature fits usable range
    if (!containsBrokenDigit(usersTemp)) {
        cout << "Temperature can be entered: " << usersTemp << endl;
    }
    else {
        // get next smallest
        int lowerTemp = usersTemp - 1;
        while (lowerTemp >= 0 && containsBrokenDigit(lowerTemp)) {
            lowerTemp--;
        }

        // get next biggest
        int biggerTemp = usersTemp + 1;
        while (biggerTemp <= 999 && containsBrokenDigit(biggerTemp)) {
            biggerTemp++;
        }

 
        if (lowerTemp >= 0)
            cout << "Next smallest temperature that is valid: " << lowerTemp << endl;
        else
            cout << "No smaller temperature that is valid." << endl;

        if (biggerTemp <= 999)
            cout << "Next largest temperature that is valid: " << biggerTemp << endl;
        else
            cout << "No larger temperature that is valid." << endl;
    }

    return 0;
}