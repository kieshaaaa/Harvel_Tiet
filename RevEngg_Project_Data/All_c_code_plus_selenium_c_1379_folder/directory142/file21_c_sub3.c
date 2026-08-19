#include <stdio.h>

int main() {
    int x, y;
    float sum, average;

    printf("Enter the first number: ");
    scanf("%d", &x);
    printf("Enter the second number: ");
    scanf("%d", &y);

    sum = x + y; // Directly calculate sum in the assignment
    average = sum / 2; // Directly calculate average in the assignment

    printf("Sum of %d and %d is = %.0f\n", x, y, sum); // Print sum as float for consistency
    printf("Average of %d and %d is = %.2f\n", x, y, average);

    return 0;
}