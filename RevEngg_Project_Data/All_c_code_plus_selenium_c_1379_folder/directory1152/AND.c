#include <stdio.h>

int main() {
    int a, b, result;

    // Prompt the user to enter the first integer
    printf("Enter the first integer (a): ");
    scanf("%d", &a);

    // Prompt the user to enter the second integer
    printf("Enter the second integer (b): ");
    scanf("%d", &b);

    // Perform the bitwise AND operation
    result = a & b;

    // Print the result
    printf("The result is %d \n", result);

    return 0;
}
