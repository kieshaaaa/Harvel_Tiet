#include <stdio.h>

int main() {
    int n, r,i;
    int fact_n;
    int combination ;
    int fact_r;
    int fact_nr;
    printf("Enter total number of items (n): ");
    scanf("%d", &n);
    printf("Enter number of items to be chosen (r): ");
    scanf("%d", &r);

    fact_n = 1;
    fact_r = 1;
    fact_nr = 1;

    // Calculate factorial of n
    for (i = 1; i <= n; i++) {
        fact_n *= i;
    }

    // Calculate factorial of r
    for (i = 1; i <= r; i++) {
        fact_r *= i;
    }

    // Calculate factorial of n-r
    for (i = 1; i <= (n - r); i++) {
        fact_nr *= i;
    }

    // Calculate and display nCr
    combination = fact_n / (fact_r * fact_nr);
    printf("Combination (nCr) of %d items chosen %d at a time is: %d\n", n, r, combination);

    return 0;
}
