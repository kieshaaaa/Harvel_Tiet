#include <stdio.h>

int main() {
    int lim_up, A = 0, B = 1, C, i = 0;

    printf("\nEnter Limit upto which you want: ");
    scanf("%d", &lim_up);

    printf("\nGenerating Fibonacci Series Below:\n\n");
    while (B <= lim_up) {
        if (i <= 1) {
            C = i;
        } else {
            C = A + B;
            A = B;
            B = C;
        }
        printf(" %d ", A);
        i++;
    }

    return 0;
}