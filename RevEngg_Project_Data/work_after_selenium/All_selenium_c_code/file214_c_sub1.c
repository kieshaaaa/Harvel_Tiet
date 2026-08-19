#include <stdio.h>

// Function to add two numbers
int addTwoNumbers(int x, int y) {
    return x + y;
}

int main() {
    int a = 10, b = 20, sum;

    // Directly calling the function
    sum = addTwoNumbers(a, b);

    printf("Sum is: ");
    printf("%d\n", sum);

    return 0;
}