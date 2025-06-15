#include <iostream>
#include <string>
#include <cctype>
using namespace std;


bool passwordTest(const string& pass) {
	if (pass.length() < 6)
		return false;
	bool digitPresent = false;
	bool lowercasePresent = false;
	bool uppercasePresent = false;

	for (char passchar : pass) {
		if (isdigit(passchar)) digitPresent = true;
		else if (isupper(passchar)) uppercasePresent = true;
		else if (islower(passchar)) lowercasePresent = true;

	}
	return digitPresent && uppercasePresent && lowercasePresent;


}

int main() {
	string pass;
	cout << "Please enter your password: ";
	cin >> pass;

	if (passwordTest(pass)) {
		cout << "Password is ok." << "\n";
	}
	else {
		cout << "Password must contain 6 characters, 1 digit, 1 lowercase and 1 uppercase." << "\n";
	}
	return 0;
}
