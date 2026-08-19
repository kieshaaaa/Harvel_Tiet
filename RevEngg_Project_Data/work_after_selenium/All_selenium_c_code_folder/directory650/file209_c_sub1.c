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
        // Print leading spaces
        for (int space = 1; space <= maxRows - row; space++) {
            printf("   ");
        }

        // Print decreasing numbers
        for (int dec = row; dec >= 1; dec--) {
            printf("%2d ", dec);
        }

        // Print increasing numbers from 2 to row
        for (int inc = 2; inc <= row; inc++) {
            printf("%2d ", inc);
        }

        printf("\n");
    }

    return 0;
}