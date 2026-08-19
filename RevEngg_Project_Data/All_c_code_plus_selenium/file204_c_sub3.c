#include <stdio.h>

int main() {
    int n, nthHexagonal;
    printf("Enter a positive integer (n) to find the nth hexagonal number: ");
    scanf("%d", &n);

    nthHexagonal = (n > 0) ? 2 * n * n - n : -1;

    if (nthHexagonal == -1) {
        printf("Please enter a positive integer.\n");
        return 1;
    } else {
        printf("The %dth hexagonal number is: %d\n", n, nthHexagonal);
    }

    return 0;
}