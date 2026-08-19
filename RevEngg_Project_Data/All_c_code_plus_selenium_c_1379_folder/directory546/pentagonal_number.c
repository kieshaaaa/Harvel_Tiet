#include <stdio.h>

int main() {
    int n;
    int nthPentagonal;
    printf("Enter a positive integer (n) to find the nth pentagonal number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1; // Exit with an error code
    }

    // Calculate the nth pentagonal number using the formula n(3n-1)/2
    // Here, we are using int, so the program works correctly for smaller values of n
    nthPentagonal = n * (3 * n - 1) / 2;

    printf("The %dth pentagonal number is: %d\n", n, nthPentagonal);

    return 0;
}
