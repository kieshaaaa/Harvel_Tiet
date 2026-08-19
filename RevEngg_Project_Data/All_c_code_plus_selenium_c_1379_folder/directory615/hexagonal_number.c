#include <stdio.h>

int main() {
    int n;
    int nthHexagonal;
    printf("Enter a positive integer (n) to find the nth hexagonal number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1; // Exit with an error code
    }

    // Calculate the nth hexagonal number using the formula n(2n - 1)
    nthHexagonal = n * (2 * n - 1);

    printf("The %dth hexagonal number is: %d\n", n, nthHexagonal);

    return 0;
}
