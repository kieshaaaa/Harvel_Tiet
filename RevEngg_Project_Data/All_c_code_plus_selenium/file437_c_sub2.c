#include <stdio.h>

int main() {
    int rows;
    printf("Enter number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    for (int i = rows; i > 0; i--) {
        for (int j = 1; j <= rows * 2 - 1; j++) {
            if (j == rows + 1 - i || j == rows - 1 + i || i == 1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}