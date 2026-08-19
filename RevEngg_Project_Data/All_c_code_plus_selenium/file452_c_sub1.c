#include <stdio.h>

int main() {
    int rows;
    printf("\nEnter the number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("\nInvalid input. Please enter a positive number.");
        return 0;
    }

    printf("\n");

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            if (i == 0 || i == rows - 1 || j == 0 || j == rows - 1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }

    return 0;
}