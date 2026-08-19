#include <stdio.h>

int main() {
    int n, r,i;
    int fact_n, fact_nr;
    int permutation;
    printf("Enter total number of items (n): ");
    scanf("%d", &n);
    printf("Enter number of items to be arranged (r): ");
    scanf("%d", &r);

    fact_n = 1;
    fact_nr = 1;


    // Calculate factorial of n
    for (i = 1; i <= n; i++) {
        fact_n *= i;
        // Calculate factorial of (n-r) during the same loop to optimize
        if (i == (n - r)) {
            fact_nr = fact_n;
        }
    }

    // Calculate and display nPr
    permutation = fact_n / fact_nr;
    printf("Permutation (nPr) of %d items arranged %d at a time is: %d\n", n, r, permutation);

    return 0;
}
