#include <stdio.h>

int main() {
    int limit, first = 0, second = 1, next, i = 0;

    printf("Enter the limit for the Fibonacci series: ");
    scanf("%d", &limit);

    printf("Fibonacci Series:\n");
    while (i < limit) {
        if (i <= 1) next = i;
        else {
            next = first + second;
            first = second;
            second = next;
        }
        printf("%d ", next);
        i++;
    }
    printf("\n");
    return 0;
}