/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-main-and-opposite-diagonal-elements-of-a-matrix.aspx */
// C program to find the sum of main and opposite diagonal elements

#include <stdio.h>

int main()
{
    int Matrix[3][3] = {
        { 9, 8, 7 },
        { 5, 4, 6 },
        { 1, 2, 3 }
    };

    int i, j, sum1 = 0, sum2 = 0;

    printf("Matrix:\n");
    for (i = 0; i < 3; ++i) {
        for (j = 0; j < 3; ++j) {
            printf(" %d", Matrix[i][j]);
        }
        printf("\n");
    }

    for (i = 0; i < 3; ++i) {
        sum1 = sum1 + Matrix[i][i];
        sum2 = sum2 + Matrix[i][3 - i - 1];
    }

    printf("Sum of Main diagonal elements: %d\n", sum1);
    printf("Sum of Opposite diagonal elements: %d\n", sum2);

    return 0;
}
