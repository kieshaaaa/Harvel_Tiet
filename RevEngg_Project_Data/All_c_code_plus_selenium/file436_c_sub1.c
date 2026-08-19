#include <stdio.h>

int main() {
    int rows;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);
    if (rows < 1) {
        printf("Please enter a positive number.\n");
        return 0;
    }

    int cols = 2 * rows - 1;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (i + j == rows - 1 || j - i == rows - 1 || i == 0) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}