#include <stdio.h>

int main() {
    int n, space, star;
    printf("\nEnter number of rows: ");
    scanf("%d", &n);
    if (n < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return 0;
    }

    for (int row = 1; row <= n; row++) {
        for (space = 1; space <= n - row; space++) {
            printf("  ");
        }
        for (star = 1; star <= 2 * row - 1; star++) {
            if (star % 2 == 0) {
                printf(" ");
            } else {
                printf("*");
            }
        }
        printf("\n");
    }

    return 0;
}