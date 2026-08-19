#include <stdio.h>

int main() {
    int n;
    printf("\nHow Many Rows => ");
    scanf("%d", &n);

    if (n < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....");
        return 0;
    }

    puts("\n--------------------------------------------\n");

    int row = 0;
    while (row < n) {
        int space = 0;
        while (space < row) {
            printf(" ");
            space++;
        }
        int star = (2 * (n - row) - 1);
        while (star > 0) {
            printf("*");
            star--;
        }
        printf("\n");
        row++;
    }

    return 0;
}