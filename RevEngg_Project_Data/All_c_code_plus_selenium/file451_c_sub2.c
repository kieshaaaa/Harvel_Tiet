#include <stdio.h>

long find_ncr(int n, int r) {
    long result = 1;
    int i;

    // Calculate nCr as (n! / r!(n-r)!) directly
    for (i = 1; i <= r; ++i) {
        result *= n - r + i;
        result /= i;
    }

    return result;
}

long find_npr(int n, int r) {
    long result = 1;
    int i;

    // Calculate nPr as (n! / (n-r)!) directly
    for (i = 0; i < r; ++i) {
        result *= n - i;
    }

    return result;
}

int main() {
    int n, r;
    long ncr, npr;

    printf("Enter the value of n :: ");
    scanf("%d", &n);
    printf("\nEnter the value of r :: ");
    scanf("%d", &r);

    ncr = find_ncr(n, r);
    npr = find_npr(n, r);

    printf("\n%dC%d = %ld\n", n, r, ncr);
    printf("\n%dP%d = %ld\n", n, r, npr);

    return 0;
}