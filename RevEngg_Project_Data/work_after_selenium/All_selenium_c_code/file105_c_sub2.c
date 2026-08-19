#include <stdio.h>

int main() {
    int n, i, j;
    int total = 0; // To count total numbers that are not prime (including 1)

    printf("Enter a number: ");
    scanf("%d", &n);

    // Initially assume all numbers are composite (excluding 1 and 2)
    total = n - 2; 

    for (i = 2; i <= n; i++) {
        for (j = 2; j*j <= i; j++) {
            if (i % j == 0) {
                break;
            }
            if (j + 1 > i / j) {
                total--; // This was actually prime, so decrement total
                break;
            }
        }
    }

    // Adjust for 1, which is neither prime nor composite by traditional definitions
    printf("Number of composite numbers till %d: %d\n", n, total + 1);
    return 0;
}