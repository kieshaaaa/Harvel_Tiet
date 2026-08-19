#include <stdio.h>

int main() {
    float num1, num2, num3, num4, outcome;

    // Prompt the user for input
    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    // Check if c - d is not equal to zero to avoid division by zero
    if(num3 - num4 == 0) {
        printf("Error: Division by zero.\n");
        return -1; // Return an error code
    }

    // Perform the operation
    outcome = (num1 + num2) / (num3 - num4);

    // Display the result
    printf("The result of the operation (a + b) / (c - d) is: %.2f\n", outcome);

    return 0;
}