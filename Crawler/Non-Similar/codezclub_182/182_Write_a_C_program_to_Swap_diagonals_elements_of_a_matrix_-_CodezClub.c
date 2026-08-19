/* Source: https://www.codezclub.com/c-interchange-diagonals-of-matrix/ */
/*  C program to Swap diagonals elements of a matrix  */

#include <stdio.h>

int main()
{
    int A[10][10],i,j,m,n;
    int row, col, square, temp;

    printf("Enter no. of rows :: ");
        scanf("%d", &m);
        printf("\nEnter no. of cols :: ");
        scanf("%d",&n);
        printf("\nEnter values to the matrix :: \n");
        for (i = 0; i < m; i++)
        {
            for (j = 0; j < n; j++)
            {
                 printf("\nEnter a[%d][%d] value :: ",i,j);
                 scanf("%d", &A[i][j]);
        }
    }

    printf("\nThe given matrix is :: \n\n");

        for (i = 0; i < m; ++i)
        {
            for (j = 0; j < n; ++j)
            {
                printf("\t%d", A[i][j]);
            }
            printf("\n\n");
        }

    square = (m < n) ? m : n;

    /*
     * Interchanges diagonal of the matrix
     */
    for(row=0; row < square; row++)
    {
        col = row;

        temp = A[row][col];
        A[row][col] = A[row][(square - col)-1];
        A[row][(square - col)-1] = temp;
    }

    /*
     * Prints the interchanged diagonals matrix
     */
    printf("\nMatrix after diagonals interchanged: \n");
    for (i = 0; i < m; ++i)
        {
            for (j = 0; j < n; ++j)
            {
                printf("\t%d", A[i][j]);
            }
            printf("\n\n");
        }

    return 0;
}