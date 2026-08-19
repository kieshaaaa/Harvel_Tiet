/* Source: https://www.codezclub.com/c-find-determinant-of-matrix/ */
/*  C program to find determinant of matrix  */

#include <stdio.h>

int main()
{
    int A[2][2];
    int row, col;
    long det;

    /*
     * Reads elements in matrix A from user
     */
    printf("\nEnter values to the matrix 2x2 :: \n");
        for(row = 0; row<2; row++)
        {
            for(col = 0; col<2; col++)
            {
                 printf("\nEnter a[%d][%d] value :: ",row,col);
                 scanf("%d", &A[row][col]);
        }
    }

    /*
     * det(A) = ad - bc
     * a = A[0][0], b = A[0][1], c = A[1][0], d = A[1][1]
     */
    det = (A[0][0] * A[1][1]) - (A[0][1] * A[1][0]);

    printf("\nDeterminant of matrix A = %ld ", det);

    return 0;
}