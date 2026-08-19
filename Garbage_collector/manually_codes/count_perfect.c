#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end, i, j, sum;
    int count ; // Counter for perfect numbers

    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    for (i = start; i <= end; i++) {
        sum = 0; // Initialize sum for each number i

        // Check divisors of i
        for (j = 1; j <= i / 2; j++) {
            if (i % j == 0) {
                sum = sum + j; // Add divisor to sum
            }
        }

        // If sum of divisors equals the number, it's a perfect number
        if (sum == i && i != 0) {
            count = count + 1; // Increment count for perfect number
        }
    }

    // Print the count of perfect numbers within the provided range
    printf("Count of perfect numbers between is : %d \n", count);


    return 0;
}
