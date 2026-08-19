/* Source: https://www.codezclub.com/c-check-whether-two-matrices-equal-or-not/ */
/*  C Program to check if two matrices are equal  */

#include <stdio.h>

int main()
{
    int A[10][10],B[10][10],i,j,m,n;
    int row, col, isEqual;

    printf("Enter no. of rows :: ");
        scanf("%d", &m);
        printf("\nEnter no. of cols :: ");
        scanf("%d",&n);
        printf("\nEnter values to the matrix A :: \n");
        for (i = 0; i < m; i++)
        {
            for (j = 0; j < n; j++)
            {
                 printf("\nEnter a[%d][%d] value :: ",i,j);
                 scanf("%d", &A[i][j]);
        }
    }

    printf("\nThe given matrix A is :: \n\n");

        for (i = 0; i < m; ++i)
        {
            for (j = 0; j < n; ++j)
            {
                printf("\t%d", A[i][j]);
            }
            printf("\n\n");
        }

    /*
     * Reads elements in second matrix from user
     */
    printf("\nEnter values to the matrix B :: \n");
        for (i = 0; i < m; i++)
        {
            for (j = 0; j < n; j++)
            {
                 printf("\nEnter a[%d][%d] value :: ",i,j);
                 scanf("%d", &B[i][j]);
        }
    }

    printf("\nThe given matrix B is :: \n\n");

        for (i = 0; i < m; ++i)
        {
            for (j = 0; j < n; ++j)
            {
                printf("\t%d", B[i][j]);
            }
            printf("\n\n");
        }


    /* Assumes that the matrices are equal */
    isEqual = 1;

    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            /*
             * If the corresponding entries of matrices are not equal
             */
            if(A[row][col] != B[row][col])
            {
                isEqual = 0;
                break;
            }
        }
    }

    /*
     * Checks the value of isEqual
     * As per our assumption if isEqual contains 1 means both are equal
     * If it contains 0 means both are not equal
     */
    if(isEqual == 1)
    {
        printf("\nMatrix A is equal to Matrix B\n");
    }
    else
    {
        printf("\nMatrix A is not equal to Matrix B\n");
    }

    return 0;
}