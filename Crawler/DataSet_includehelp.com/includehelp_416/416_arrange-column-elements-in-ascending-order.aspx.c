/* Source: https://www.includehelp.com/c-programs/arrange-column-elements-in-ascending-order.aspx */
// C program to arrange column elements in ascending order

#include <stdio.h>

#define ROW 3
#define COL 3

int main()
{

    int Matrix[ROW][COL] = {
        { 9, 8, 7 },
        { 5, 4, 6 },
        { 1, 2, 3 }
    };

    int i, j, k, temp;

    printf("Matrix:\n");
    for (i = 0; i < ROW; ++i) {
        for (j = 0; j < COL; ++j)
            printf(" %d", Matrix[i][j]);
        printf("\n");
    }

    // Arrange columns elements in ascending order
    for (j = 0; j < COL; ++j) {
        for (i = 0; i < ROW; ++i) {
            for (k = i + 1; k < ROW; ++k) {
                if (Matrix[i][j] > Matrix[k][j]) {
                    temp = Matrix[i][j];
                    Matrix[i][j] = Matrix[k][j];
                    Matrix[k][j] = temp;
                }
            }
        }
    }

    printf("Matrix after sorting column elements:\n");
    for (i = 0; i < ROW; ++i) {
        for (j = 0; j < COL; ++j)
            printf(" %d", Matrix[i][j]);
        printf("\n");
    }

    return 0;
}
