#include <stdio.h>

int main() {
    float a, b, c, d, e, result;

    // Ask the user for input
    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    // Perform the calculation
    result = a + b + c + d - e;

    // Display the result
    printf("The result of adding a, b, c, d, and e is: %.2f\n", result);

    return 0;
}
