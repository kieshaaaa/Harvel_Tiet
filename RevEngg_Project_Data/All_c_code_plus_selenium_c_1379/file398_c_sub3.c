#include <stdio.h>

int main() {
    float length, breadth, area, perimeter;

    printf("You will be asked to enter the length and breadth of a rectangle to calculate its area and perimeter.\n");
    printf("Please enter the length: ");
    scanf("%f", &length);

    printf("Now, enter the breadth: ");
    scanf("%f", &breadth);

    area = length * breadth;
    perimeter = (2 * length) + (2 * breadth);

    printf("Area of the rectangle: %.02f\n", area);
    printf("Perimeter of rectangle: %.02f\n", perimeter);

    return 0;
}