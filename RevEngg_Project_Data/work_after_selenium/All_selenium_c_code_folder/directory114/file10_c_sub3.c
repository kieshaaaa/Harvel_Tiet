#include <stdio.h>

int main() {
    int n;
    printf("Enter the number of rows: ");
    scanf("%d", &n);

    if (n < 1) {
        printf("Please enter a positive number.");
        return 0;
    }

    for (int row = 0; row < n; row++) {
        for (int col = 0; col < n; col++) {
            if (col < row) {
                printf("  ");
            } else {
                printf("%d ", col + 1);
            }
        }
        printf("\n");
    }

    return 0;
}