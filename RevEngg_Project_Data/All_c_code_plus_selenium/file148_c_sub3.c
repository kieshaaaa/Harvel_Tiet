#include <stdio.h>

int main() {
    int n;
    int temp1, temp2, nthCubic;
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    temp1 = n * n; // Square of n
    temp2 = temp1 * n; // Cubic of n by multiplying the square with n
    nthCubic = temp2;

    printf("The %dth cubic number is: %d\n", n, nthCubic);
    return 0;
}