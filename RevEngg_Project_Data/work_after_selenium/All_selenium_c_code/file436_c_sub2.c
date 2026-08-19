#include <stdio.h>

int main() {
    int n;
    printf("Enter the height of the pattern: ");
    scanf("%d", &n);
    if (n < 1) {
        printf("Invalid input. Please enter a positive integer.\n");
        return 0;
    }

    for (int row = 0; row < n; row++) {
        // Spaces
        for (int space = 0; space < row; space++) {
            printf(" ");
        }
        // Stars and internal spaces
        for (int col = 0; col < 2 * (n - row) - 1; col++) {
            if (col == 0 || col == 2 * (n - row) - 2 || row == 0) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}