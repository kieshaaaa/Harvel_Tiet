#include <stdio.h>

int main() {
    int n;
    printf("Enter the size of the pattern: ");
    scanf("%d", &n);
    if (n < 1) {
        printf("Invalid input. Please enter a positive number.");
        return 0;
    }
    n = n % 2 == 0 ? n + 1 : n; // Ensure n is odd
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (i == n / 2 + 1 || j == n / 2 + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}