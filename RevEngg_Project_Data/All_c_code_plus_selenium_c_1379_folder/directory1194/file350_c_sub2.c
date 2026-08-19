#include <stdio.h>

int main() {
    int prev = 0, current = 1;
    int count = 0;
    int limit;

    printf("Enter the upper limit: ");
    scanf("%d", &limit);

    if (limit < 1) {
        printf("There are no Fibonacci numbers less than or equal to %d.\n", limit);
    } else {
        // Initially, handle the special case for the first Fibonacci number
        if (limit >= 1) {
            count = 1; // The first Fibonacci number within the limit
        }
        
        do {
            int next = prev + current;
            prev = current;
            current = next;

            if (next <= limit) {
                count++;
            }
        } while (current <= limit);
        
        printf("The number of Fibonacci numbers up to %d is %d.\n", limit, count);
    }

    return 0;
}