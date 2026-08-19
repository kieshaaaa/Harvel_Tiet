#include <stdio.h>

// Function to add two numbers without directly using the + operator
int addTwoNumbers(int x, int y) {
    while (y != 0) {
        x++;
        y--;
    }
    return x;
}

int main() {
    int a = 10, b = 20, sum;

    // Calling the modified addition function
    sum = addTwoNumbers(a, b);

    printf("Sum is: ");
    printf("%d\n", sum);

    return 0;
}