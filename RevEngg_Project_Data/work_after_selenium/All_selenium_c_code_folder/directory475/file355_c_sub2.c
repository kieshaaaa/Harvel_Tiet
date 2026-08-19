#include <stdio.h>

int main() {
    int n, r;
    int fact_n = 1, fact_nr = 1;
    int permutation, i = 1;
    
    printf("Enter total number of items (n): ");
    scanf("%d", &n);
    printf("Enter number of items to be arranged (r): ");
    scanf("%d", &r);

    while (i <= n) {
        fact_n *= i;
        if (i <= (n - r)) {
            fact_nr *= i;
        }
        i++;
    }
    
    permutation = fact_n / fact_nr;
    printf("Permutation (nPr) of %d items arranged %d at a time is: ", n, r);
    printf("%d\n", permutation);

    return 0;
}