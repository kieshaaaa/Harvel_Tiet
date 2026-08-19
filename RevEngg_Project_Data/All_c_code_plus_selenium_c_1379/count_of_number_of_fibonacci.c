#include <stdio.h>

int main() {
    int a = 0, b = 1; // Initialize the first two Fibonacci numbers
    int sum = 0; // This will store the sum of the last two Fibonacci numbers
    int count = 0; // To count the number of Fibonacci numbers generated
    int limit;

    printf("Enter the upper limit: ");
    scanf("%d", &limit);

    // Check if the limit is less than the first Fibonacci number
    if (limit < 1) {
        printf("There are no Fibonacci numbers less than or equal to %d.\n", limit);
        return 0;
    }

    // Handle the first Fibonacci number separately if it's within the limit
    if (limit >= 1) {
        count++; // The first Fibonacci number is within the limit
    }

    while (sum <= limit) {
        sum = a + b; // Generate the next Fibonacci number
        a = b; // Update the last two Fibonacci numbers for the next iteration
        b = sum;
        
        // Check if the generated Fibonacci number is within the limit
        if (sum <= limit) {
            count++;
        }
    }

    printf("The number of Fibonacci numbers up to %d is %d.\n", limit, count);

    return 0;
}
