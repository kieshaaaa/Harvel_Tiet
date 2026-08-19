/* Source: https://www.includehelp.com/c-programs/arrange-row-elements-in-ascending-order.aspx */
// C program to arrange row elements in ascending order

#include <stdio.h>
#define ROW 3
#define COL 3

int main()
{
    int Matrix[ROW][COL] = {
        { 3, 2, 1 },
        { 5, 4, 6 },
        { 9, 8, 7 }
    };

    int i, j, k, temp;

    printf("Matrix:\n");
    for (i = 0; i < ROW; ++i) {
        for (j = 0; j < COL; ++j)
            printf(" %d", Matrix[i][j]);
        printf("\n");
    }

    // Arrange rows elements in ascending order
    for (i = 0; i < ROW; ++i) {
        for (j = 0; j < COL; ++j) {
            for (k = (j + 1); k < COL; ++k) {
                if (Matrix[i][j] > Matrix[i][k]) {
                    temp = Matrix[i][j];
                    Matrix[i][j] = Matrix[i][k];
                    Matrix[i][k] = temp;
                }
            }
        }
    }

    printf("Matrix after sorting row elements:\n");
    for (i = 0; i < ROW; ++i) {
        for (j = 0; j < COL; ++j)
            printf(" %d", Matrix[i][j]);
        printf("\n");
    }

    return 0;
}
