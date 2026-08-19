#include <stdio.h>

int main() {
    int max_val;
    int num_squares = 0;
    int current_square = 1;
    int i = 1;
    printf("Enter a positive integer: ");
    scanf("%d", &max_val);

    while (current_square <= max_val) {
        current_square = i * i; // Calculate square of i
        if (current_square <= max_val) {
            num_squares++;
        } else {
            break; // Stop if square exceeds limit
        }
        i++;
    }

    printf("The number of square (perfect square) numbers is: %d\n", num_squares);
    return 0;
}