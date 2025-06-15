#include <iostream>;
using namespace std;

int main() {
	int triangleLayers = 10;

	for (int i = 1; i <= triangleLayers; ++i) {

		for (int k = 1; k <= triangleLayers - i; ++k) {
			cout << " ";
		}


		for (int j = 1; j <= 2 * i - 1; ++j) {
			cout << "*";
		}

		cout << endl;	
	}

	return 0;
}