#include <stdio.h>

int main() {
    int rows;
    printf("Enter number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    int cols = rows * 2 - 1;
    for (int row = 1; row <= rows; row++) {
        // Left Padding
        for (int col = 1; col <= rows - row; col++) {
            printf(" ");
        }
        // Stars and Internal Spaces
        for (int col = 1; col <= (2 * row - 1); col++) {
            if (col == 1 || col == 2 * row - 1 || row == rows) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}