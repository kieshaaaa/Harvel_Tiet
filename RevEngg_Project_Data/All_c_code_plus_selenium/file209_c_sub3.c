#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    if (maxRows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....");
        return 0;
    }

    printf("\n--------------------------------------------\n");

    for (int row = 1; row <= maxRows; row++) {
        int col;

        // Left spacing
        for (col = 1; col <= maxRows - row; col++) {
            printf("   ");
        }

        // Ascending part
        for (col = row; col >= 1; col--) {
            printf("%2d ", col);
        }

        // Descending part excluding the middle element
        for (col = 2; col <= row; col++) {
            printf("%2d ", col);
        }

        // Move to the next line
        printf("\n");
    }

    return 0;
}