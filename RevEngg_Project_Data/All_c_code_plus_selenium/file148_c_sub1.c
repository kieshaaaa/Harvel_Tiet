#include <stdio.h>

int main() {
    int n, i;
    int nthCubic = 1; // Start with 1 because multiplying by 0 gives 0
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    for (i = 0; i < 3; ++i) {
        nthCubic *= n;
    }

    printf("The %dth cubic number is: %d\n", n, nthCubic);
    return 0;
}