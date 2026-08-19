#include <stdio.h>

int main() {
    int n, r;
    int fact_n = 1, fact_n_r = 1;
    int permutation;
    
    printf("Enter total number of items (n): ");
    scanf("%d", &n);
    printf("Enter number of items to be arranged (r): ");
    scanf("%d", &r);

    for (int i = 1; i <= n; i++) {
        fact_n *= i;
        if (i <= n - r) fact_n_r *= i;
    }

    permutation = fact_n / fact_n_r;
    printf("Permutation (nPr) of %d items arranged %d at a time is: ", n, r);
    printf("%d\n", permutation);

    return 0;
}