#include <stdio.h>

int main() {
    float num1, num2, num3, num4, num5, sum;

    // Ask the user for input
    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &num1, &num2, &num3, &num4, &num5);

    // Perform the calculation
    sum = num1 + num2 + num3 + num4 + num5;

    // Display the result
    printf("The result of adding a, b, c, d, and e is: %.2f\n", sum);

    return 0;
}