#include <stdio.h>

int main() {
    int limit, i = 0;
    float first = 0, second = 1, next;

    printf("Enter the limit for the Fibonacci series: ");
    scanf("%d", &limit);

    printf("Fibonacci Series:\n");
    for (; i < limit; i++) {
        if (i <= 1) next = (float)i;
        else {
            next = first + second;
            first = second;
            second = next;
        }
        printf("%.0f ", next); // Using float, but printed without decimal places
    }
    printf("\n");
    return 0;
}