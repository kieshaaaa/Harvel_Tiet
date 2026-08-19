#include <stdio.h>

int main() {
    float num1, num2, num3, num4, outcome;

    // Prompt the user for input
    printf("Enter four numbers (num1, num2, num3, num4): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    // Check if num3 + num4 is not equal to zero to avoid division by zero
    if(num3 + num4 == 0) {
        printf("Division by zero error.\n");
        return -1; // Return an error code
    }

    // Perform the operation
    outcome = (num1 + num2) / (num3 + num4);

    // Display the result
    printf("The result of the operation (num1 + num2) / (num3 + num4) is: %.2f\n", outcome);

    return 0;
}