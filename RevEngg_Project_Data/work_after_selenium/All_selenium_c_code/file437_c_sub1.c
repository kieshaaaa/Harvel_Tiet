#include <stdio.h>

int main() {
    int rows;
    printf("Enter number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    int cols = 2 * rows - 1;
    printf("\n");

    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= cols; j++) {
            if (i == rows || j == rows - i + 1 || j == i + rows - 1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}