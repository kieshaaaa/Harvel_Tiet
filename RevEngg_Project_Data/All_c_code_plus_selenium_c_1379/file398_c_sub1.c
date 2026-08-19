#include <stdio.h>

int main() {
    float length, breadth, area, perimeter;

    printf("Enter the length: ");
    scanf("%f", &length);

    printf("Enter the breadth: ");
    scanf("%f", &breadth);

    area = length * breadth;
    perimeter = 2 * (length + breadth);

    printf("Area of the rectangle: %.02f\n", area);
    printf("Perimeter of rectangle: %.02f\n", perimeter);

    return 0;
}