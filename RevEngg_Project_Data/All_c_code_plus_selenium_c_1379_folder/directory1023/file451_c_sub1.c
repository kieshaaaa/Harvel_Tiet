#include <stdio.h>

long find_ncr(int n, int r) {
    long n_fact = 1, r_fact = 1, n_r_fact = 1;
    int i;

    for (i = 1; i <= n; i++) {
        n_fact *= i;
        if (i <= r) r_fact *= i;
        if (i <= n - r) n_r_fact *= i;
    }

    return n_fact / (r_fact * n_r_fact);
}

long find_npr(int n, int r) {
    long n_fact = 1, n_r_fact = 1;
    int i;

    for (i = 1; i <= n; i++) {
        n_fact *= i;
        if (i <= n - r) n_r_fact *= i;
    }

    return n_fact / n_r_fact;
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