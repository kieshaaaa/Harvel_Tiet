#include <stdio.h>

int main() {
    float a, b, c, result;

    // Prompt the user to enter three numbers
    printf("Enter three numbers separated by spaces (a b c): ");
    scanf("%f %f %f", &a, &b, &c);

    // Calculate the result of a * b * c
    result = a * b * c;

    // Display the result
    printf("The result of the operation a * b * c is: %.2f\n", result);

    return 0;
}
