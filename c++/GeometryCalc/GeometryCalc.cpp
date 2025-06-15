#include <iostream>
#include <cmath>

int main() {
    using namespace std;

    int userInput;
    cout << "\n" << "Geometry Calculator" << "\n";
    cout << "1. Calculate the Area of a Circle" << "\n";
    cout << "2. Calculate the Area of a Rectangle" << "\n";
    cout << "3. Calculate the Area of a Triangle" << "\n";
    cout << "4. Quit" << "\n";
    cin >> userInput;
    cout << "\n";

    switch (userInput) {
        float circleArea;
    case 1:
        int circleRadius;
        cout << "Please enter the radius of the circle: ";
        cin >> circleRadius;
        if (circleRadius > 0) {
            circleArea = 3.14 * pow(circleRadius, 2);
            cout << "Area of this circle is " << circleArea << "\n";
            break;
        }
        else {
            cout << "Please enter a positive number and try again" << "\n";
        }
    case 2:
        float rectLength, rectWidth, rectArea;
        cout << "Please enter the length you want for the rectangle: " << "\n";
        cin >> rectLength;
        cout << "Please enter the width you want for the rectangle: " << "\n";
        cin >> rectWidth;
        if (rectLength > 0 && rectWidth > 0) {
            rectArea = rectLength * rectWidth;
            cout << "Area of this rectangle is " << rectArea << "\n";
            break;
        }
        else {
            cout << "Please enter only positive numbers for width and length and try again" << "\n";
        }
    case 3:
        float triangleBase, triangleHeight, triangleArea;
        cout << "Please enter the base of the triangle: " << "\n";
        cin >> triangleBase;
        cout << "Please enter the height of the triangle: " << "\n";
        cin >> triangleHeight;
        if (triangleBase > 0 && triangleHeight > 0) {
            triangleArea = triangleBase * triangleHeight / 2;
            cout << "Area of this triangle is " << triangleArea << "\n";
        }
        else {
            cout << "Please enter only positive numbers for base and height and try again" << "\n";
        }
    case 4:
        cout << "Thank you for using the program." << "\n";
        break;
    default:
        cout << "Valid choices are between 1 and 4 only. Please input 1,2,3, or 4" << "\n";
        break;
    }

}