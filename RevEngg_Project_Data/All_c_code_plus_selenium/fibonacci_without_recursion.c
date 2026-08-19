#include <stdio.h>

int main() {
    int limit;
    int first = 0;
    int second = 1;
    int next, i;

    printf("Enter the limit for the Fibonacci series: ");
    scanf("%d", &limit);

    printf("Fibonacci Series:\n");

    for (i = 0; i < limit; i++) {
        if (i <= 1) {
            next = i; // For the first two numbers
        } else {
            next = first + second;
            first = second;
            second = next;
        }
        printf("%d ", next);
    }

    printf("\n");
    return 0;
}
