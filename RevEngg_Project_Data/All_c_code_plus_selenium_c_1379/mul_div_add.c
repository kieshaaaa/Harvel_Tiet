#include <stdio.h>

int main() {
    float a, b, c, d, result;

    // Prompt the user for input
    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    // Check if c + d is not equal to zero to avoid division by zero
    if(c + d == 0) {
        printf("Error: Division by zero due to c + d being zero.\n");
        return -1; // Return an error code
    }

    // Perform the operation
    result = (a * b) / (c + d);

    // Display the result
    printf("The result of the operation (a * b) / (c + d) is: %.2f\n", result);

    return 0;
}
