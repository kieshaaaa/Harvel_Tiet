#include <stdio.h>

int main() {
    float a, b, c, d, perimeter;

    // Prompt the user for the lengths of all sides
    printf("Enter the length of side a: ");
    scanf("%f", &a);
    printf("Enter the length of side b: ");
    scanf("%f", &b);
    printf("Enter the length of side c: ");
    scanf("%f", &c);
    printf("Enter the length of side d: ");
    scanf("%f", &d);

    // Calculate the perimeter
    perimeter = a + b + c + d;

    // Display the result
    printf("Perimeter of the trapezoid: %.2f\n", perimeter);

    return 0;
}
