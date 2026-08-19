#include <stdio.h>

int main() {
    int rows, i, j, space;

    printf("\nEnter number of rows: ");
    scanf("%d", &rows);
    if (rows < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return -1;
    }

    for(i = 1; i <= rows; i++) {
        for(j = 1; j <= rows; j++) {
            if(j == i || j == rows - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        for(j = rows + 1; j <= 2 * rows; j++) {
            if(j == i + rows || j == 3 * rows - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}