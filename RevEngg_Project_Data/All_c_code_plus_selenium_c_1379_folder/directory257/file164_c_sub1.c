#include <stdio.h>

int main() {
    int rows, i, j, k;
    printf("\nEnter number of rows: ");
    scanf("%d", &rows);
    if (rows < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return 0;
    }

    i = 1;
    while (i <= rows) {
        j = rows - i;
        while (j > 0) {
            printf("  ");
            j--;
        }

        k = 0;
        while (k < i) {
            printf("* ");
            k++;
        }

        printf("\n");
        i++;
    }

    return 0;
}