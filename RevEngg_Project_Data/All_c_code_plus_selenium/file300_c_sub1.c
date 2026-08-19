#include <stdio.h>

int main() {
    int lim_up, A = 0, B = 1, C = 0;

    printf("\nEnter Limit upto which you want: ");
    scanf("%d", &lim_up);

    printf("\nGenerating Fibonacci Series Below:\n\n");
    for (int i = 0; A <= lim_up; i++) {
        printf(" %d ", A);
        C = A + B;
        A = B;
        B = C;
    }

    return 0;
}