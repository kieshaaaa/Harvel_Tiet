#include <stdio.h>

void calculate_npr_ncr(int n, int r, long *ncr, long *npr) {
    *ncr = 1;
    *npr = 1;
    int i;

    for (i = 1; i <= n; ++i) {
        if (i <= r) {
            *npr *= n - r + i;
            *ncr *= n - r + i;
            *ncr /= i;
        } else if (i <= n - r) {
            *npr *= i;
        }
    }
}

int main() {
    int n, r;
    long ncr, npr;

    printf("Enter the value of n :: ");
    scanf("%d", &n);
    printf("\nEnter the value of r :: ");
    scanf("%d", &r);

    calculate_npr_ncr(n, r, &ncr, &npr);

    printf("\n%dC%d = %ld\n", n, r, ncr);
    printf("\n%dP%d = %ld\n", n, r, npr);

    return 0;
}