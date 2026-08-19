#include <stdio.h>

int main() {
    printf("\nHow Many Rows => ");
    int rows;
    scanf("%d", &rows);

    if (rows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....\n");
        return 0;
    }

    printf("\n");

    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= rows * 3; j++) {
            if (j == rows + 1 - i || j == rows - 1 + i || j == rows * 2 + 2 - i || j == rows * 2 + i) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}