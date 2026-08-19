#include <stdio.h>

int main() {
    int n, i, j;

    printf("\nEnter number of rows: ");
    scanf("%d", &n);
    if (n < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return -1;
    }

    for(i = 1; i <= n; i++) {
        for(j = 1; j <= 2 * n; j++) {
            if(j == i || j == 2 * n - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    for(i = n - 1; i >= 1; i--) {
        for(j = 1; j <= 2 * n; j++) {
            if(j == i || j == 2 * n - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}