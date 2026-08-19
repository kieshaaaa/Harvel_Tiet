#include <stdio.h>

int main() {
    int n, nthHexagonal;
    printf("Enter a positive integer (n) to find the nth hexagonal number: ");
    scanf("%d", &n);

    if (n > 0) {
        nthHexagonal = 2 * n * n - n;
        printf("The %dth hexagonal number is: %d\n", n, nthHexagonal);
    } else {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    return 0;
}