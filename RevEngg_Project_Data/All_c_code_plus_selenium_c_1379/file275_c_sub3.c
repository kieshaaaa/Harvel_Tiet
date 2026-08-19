#include <stdio.h>

int main() {
    int n;
    float nthTriangular;
    printf("Enter a positive integer (n) to find the nth triangular number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    nthTriangular = 0.5f * n * (n + 1); // Use of float for demonstration, though output is casted to int

    printf("The %dth triangular number is: %d\n", n, (int)nthTriangular);

    return 0;
}