#include <stdio.h>

int main() {
    float a, b, c, d, result;

    // Prompt the user for input
    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    // Perform the multiplication
    result = a * b * c * d;

    // Display the result
    printf("The result of the operation a * b * c * d is: %.2f\n", result);

    return 0;
}
