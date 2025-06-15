#include <iostream>
using namespace std;


// for 2 doubles
double max(double x, double y) {
    return x > y ? x : y;
}

//for 3 doubles
double max(double x, double y, double z) {
    return max(max(x, y), z);
}

int main() {
    cout << "Choose 1 to input 2 doubles or 2 to input 3 doubles: " << "\n";
    int paramChoice;
    double first = 0, second = 0, third = 0;
    cin >> paramChoice;
    if (paramChoice == 1) {
        cout << "Please enter first double: " << "\n";
        cin >> first;
        cout << "Please enter second double: " << "\n";
        cin >> second;
        cout << "The max of " << first << " and " << second << " is: " << max(first, second) << "\n";
    }
    else {
        cout << "Please enter first double: " << "\n";
        cin >> first;
        cout << "Please enter second double: " << "\n";
        cin >> second;
        cout << "Please enter third double: " << "\n";
        cin >> third;
        cout << "The max of " << first << " , " << second << " and " << third << " is: " << max(first, second, third) << "\n";
    }
 
    return 0;

}