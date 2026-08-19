#include <stdio.h>

int main() {
    int a, result;

    // Prompt the user to enter an integer
    printf("Enter an integer (a): ");
    scanf("%d", &a);

    // Perform the left shift operation
    result = a >> 3;

    // Print the result
    printf("The result is %d \n", result);

    return 0;
}
