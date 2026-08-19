#include <stdio.h>

int main() {
    int n;
    int nthTriangular;
    printf("Enter a positive integer (n) to find the nth triangular number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1; // Exit with an error code
    }

    // Calculate the nth triangular number using the formula n(n+1)/2
    // Here, we are using int, so the program works correctly for smaller values of n
    nthTriangular = n * (n + 1) / 2;

    printf("The %dth triangular number is: %d\n", n, nthTriangular);

    return 0;
}
