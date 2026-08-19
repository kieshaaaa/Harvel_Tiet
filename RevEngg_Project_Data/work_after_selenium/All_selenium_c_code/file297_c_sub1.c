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

    for (int row = 1; row <= maxRows; row++) {
        for (int space = maxRows - row; space > 0; space--) {
            printf(" ");
        }

        for (int star = 1; star <= (2 * row - 1); star++) {
            printf("*");
        }

        printf("\n");
    }

    return 0;
}