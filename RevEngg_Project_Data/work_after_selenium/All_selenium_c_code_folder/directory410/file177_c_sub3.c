#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    for (int row = 1; row <= maxRows; row++) {
        // Print leading spaces
        for (int space = maxRows - row; space > 0; space--) {
            printf(" ");
        }
        // Increment pattern
        for (int col = 1; col <= row; col++) {
            printf("%d ", row + col);
        }
        printf("\n");
    }
    return 0;
}