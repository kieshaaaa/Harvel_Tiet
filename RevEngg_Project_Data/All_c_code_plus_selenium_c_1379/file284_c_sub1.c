#include <stdio.h>

int main() {
    float side1, side2, height, trapezoid_area;

    printf("Please enter the lengths of the two parallel sides and the height of the trapezoid.\n");
    printf("Length of first side: ");
    scanf("%f", &side1);
    printf("Length of second side: ");
    scanf("%f", &side2);
    printf("Height: ");
    scanf("%f", &height);

    trapezoid_area = (side1 + side2) * height * 0.5;

    printf("The area of the trapezoid is: ");
    printf("%.2f\n", trapezoid_area);

    return 0;
}