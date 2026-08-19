#include <stdio.h>

int main() {
    int limit
    int count = 0;
    int square = 1;
    int i;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    for (i = 1; square <= limit; i++) {
        square = i * i; // Calculate square of i
        if (square <= limit) {
            count++;
        } else {
            break; // Stop if square exceeds limit
        }
    }

    printf("The number of square (perfect square) numbers is: %d\n", count);
    return 0;
}
