#include <stdio.h>

int main() {
    int prev = 0, current = 1, next = 0;
    int count = 0;
    int limit;

    printf("Enter the upper limit: ");
    scanf("%d", &limit);

    if (limit < 1) {
        printf("There are no Fibonacci numbers less than or equal to %d.\n", limit);
    } else {
        for (; next <= limit; count++) {
            next = prev + current;
            prev = current;
            current = next;
            if (prev == 1) {
                // Adjust for the first Fibonacci number "1" being counted twice
                count++;
            }
        }
        printf("The number of Fibonacci numbers up to %d is %d.\n", limit, count);
    }

    return 0;
}