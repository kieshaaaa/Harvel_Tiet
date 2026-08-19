#include <stdio.h>

int main() {
    int rows;
    printf("\nEnter number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return 0;
    }

    printf("\nPattern:\n");
    for (int i = 0; i < rows; i++) {
        int col = rows;
        while (col > 0) {
            printf("%d ", col);
            col--;
        }
        printf("\n");
    }
    return 0;
}