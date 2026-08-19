#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    if (maxRows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....\n");
        return 0;
    }

    printf("\n--------------------------------------------\n");

    for (int row = 0; row < maxRows; row++) {
        int printPos = maxRows - row;
        for (int col = 1; col <= maxRows * 2 - 1; col++) {
            if (col >= printPos && col <= (maxRows * 2 - 1) - (printPos - 1)) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}