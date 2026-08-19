#include <stdio.h>

int main() {
    int lim_up, A = 0, B = 1;

    printf("\nEnter Limit upto which you want: ");
    scanf("%d", &lim_up);

    printf("\nGenerating Fibonacci Series Below:\n\n");
    while (A <= lim_up) {
        printf(" %d ", A);
        B = B + A;
        A = B - A;
    }

    return 0;
}