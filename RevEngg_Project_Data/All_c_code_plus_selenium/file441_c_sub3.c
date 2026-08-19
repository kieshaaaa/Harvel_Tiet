#include <stdio.h>

int main() {
    int n, count = 0;
    printf("Enter a number: ");
    scanf("%d", &n);

    for (int i = 4; i <= n; i++) { // Start from 4, as 2 and 3 are primes
        int isComposite = 0;
        for (int j = 2; (j*j <= i) && !isComposite; j++) {
            if (i % j == 0) {
                isComposite = 1;
            }
        }
        count += isComposite;
    }

    printf("Number of composite numbers till ");
    printf("%d", n);
    printf(": ");
    printf("%d\n", count);

    return 0;
}