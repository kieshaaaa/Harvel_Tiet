#include <stdio.h>

int main() {
    int n, count = 0;
    int nthCubic = 1; // Initialize to 1 for multiplication
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    while (count < 3) {
        nthCubic *= n;
        count++;
    }

    printf("The %dth cubic number is: %d\n", n, nthCubic);
    return 0;
}