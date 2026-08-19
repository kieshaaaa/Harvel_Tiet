#include <stdio.h>

int main() {
    int number;
    printf("Enter a positive integer number: ");
    scanf("%d", &number);

    // Using bitwise AND operation to check even or odd
    // If the last bit is 0, the number is even. If it's 1, the number is odd.
    int result = number & 1;

    if (result == 0) {
        printf("%d is an EVEN number.\n", number);
    } else {
        printf("%d is an ODD number.\n", number);
    }

    return 0;
}