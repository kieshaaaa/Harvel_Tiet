#include <stdio.h>

int main() {
    int a = 1, b = 1; // Starting directly with the first two Fibonacci numbers as 1
    int count = 0;
    int limit;

    printf("Enter the upper limit: ");
    scanf("%d", &limit);

    if (limit < 1) {
        printf("There are no Fibonacci numbers less than or equal to %d.\n", limit);
        return 0;
    }

    while (a <= limit) {
        if (a <= limit) {
            count++;
        }
        b = a + b; // Next Fibonacci number
        a = b - a; // Update 'a' without needing a temporary variable
    }

    printf("The number of Fibonacci numbers up to %d is %d.\n", limit, count);

    return 0;
}