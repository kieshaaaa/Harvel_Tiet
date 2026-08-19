#include <stdio.h>

int main() {
    int n, i, j;
    int count = 0;
    int isComposite;

    printf("Enter a number: ");
    scanf("%d", &n);

    // Directly counting 2 as prime, all even numbers as composite
    if (n > 2) count = (n - 2) / 2;

    for (i = 3; i <= n; i += 2) {
        isComposite = 0;
        for (j = 3; j*j <= i; j += 2) {
            if (i % j == 0) {
                isComposite = 1;
                break;
            }
        }
        if (isComposite) {
            count++; // This number is composite
        } else if (i == 2) {
            // This check is redundant given the loop starts at 3, kept for clarity
            // Prime numbers are not being counted directly in this approach
        }
    }

    // Adjusting the count for 1 and 2 based on input
    count += (n >= 2) ? 1 : 0;

    printf("Number of composite numbers till %d: %d\n", n, count);
    return 0;
}