#include <stdio.h>

int main() {
    float length, breadth, area, perimeter, sum_of_sides;

    printf("Enter the length: ");
    scanf("%f", &length);

    printf("Enter the breadth: ");
    scanf("%f", &breadth);

    sum_of_sides = length + breadth;
    area = sum_of_sides * breadth;
    perimeter = 2 * sum_of_sides;

    printf("Area of the rectangle: %.02f\n", area);
    printf("Perimeter of rectangle: %.02f\n", perimeter);

    return 0;
}