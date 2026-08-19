#include <stdio.h>

int main() {
    int rows;
    printf("\nHow Many Rows => ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....\n");
        return 0;
    }

    int cols = rows * 3;
    printf("\n");

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (j == rows - i - 1 || j == rows + i - 1 || j == 2 * rows + i - 2 || j == 2 * rows - i - 2) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}