#include <stdio.h>

int main() {
    float a, b, c, d, e, result;

    // Prompt the user for input
    printf("Enter five numbers (a, b, c, d, e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    // Check if e is not zero to avoid division by zero
    if(e == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return 1; // Exit the program with an error code
    }

    // Perform the operation
    result = a + b * c - d / e;

    // Display the result
    printf("The result of the operation a + b * c - d / e is: %.2f\n", result);

    return 0;
}
