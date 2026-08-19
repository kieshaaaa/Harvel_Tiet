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

    for (int row = n; row > 0; row--) {
        for (int space = n; space > row; space--) {
            printf(" ");
        }
        for (int star = 1; star <= (2 * row - 1); star++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}