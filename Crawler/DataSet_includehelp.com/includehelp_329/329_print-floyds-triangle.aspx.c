/* Source: https://www.includehelp.com/c-programs/print-floyds-triangle.aspx */
// C program to print Floyd's triangle

#include <stdio.h>

int main()
{
    int outer = 0;
    int inner = 0;
    int number = 1;
    int rows = 0;

    printf("Enter the total number of rows: ");
    scanf("%d", &rows);

    for (outer = 0; outer <= rows; outer = outer + 1) {
        for (inner = 1; inner < outer + 1; inner++) {
            printf("%d ", number);
            number = number + 1;
        }
        printf("\n");
    }

    return 0;
}
