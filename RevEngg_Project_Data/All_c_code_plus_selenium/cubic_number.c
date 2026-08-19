#include <stdio.h>

int main() {
    int n;
    int nthCubic;
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &n);

    // Validate input
    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1; // Exit with an error code
    }

    // Calculate the nth cubic number
    // Since we are using int, this will work for relatively small values of n.
    // For larger values of n, consider using a larger data type like long long.
    nthCubic = n * n * n;

    printf("The %dth cubic number is: %d\n", n, nthCubic);

    return 0;
}
