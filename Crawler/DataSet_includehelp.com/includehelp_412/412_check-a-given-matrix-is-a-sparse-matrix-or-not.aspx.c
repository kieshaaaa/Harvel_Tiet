/* Source: https://www.includehelp.com/c-programs/check-a-given-matrix-is-a-sparse-matrix-or-not.aspx */
// C program to check a given matrix is a sparse matrix or not

#include <stdio.h>
#define ROW 3
#define COL 3

int main()
{
    int matrix[ROW][COL];

    int i, j;
    int counter = 0;

    printf("Enter the elements of the matrix:\n");
    for (i = 0; i < 3; ++i) {
        for (j = 0; j < 3; ++j) {
            scanf("%d", &matrix[i][j]);
            if (matrix[i][j] == 0)
                ++counter;
        }
    }

    if (counter > ((ROW * COL) / 2))
        printf("Matrix is a Sparse Matrix\n");
    else
        printf("Matrix is not aa Sparse Matrix\n");

    return 0;
}
