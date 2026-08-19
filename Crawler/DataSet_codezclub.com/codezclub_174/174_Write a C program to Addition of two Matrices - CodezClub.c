/* Source: https://www.codezclub.com/c-addition-of-two-matrices/ */
/*  C Program for Addition of two matrices  */

#include <stdio.h>

int main()
{
    int A[10][10],B[10][10],C[10][10],i,j,m,n;
    int row, col;

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

    /*
     * Adds both matrices A and B entry wise or element wise
     * And stores result in matrix C
     */
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            C[row][col] = A[row][col] + B[row][col];
        }
    }

    /*
     * Prints the Addition of two matrices A and B
     */
    printf("\nAddition of matrices A + B = C\n");
    printf("\nThe given matrix C is :: \n\n");

        for (i = 0; i < m; ++i)
        {
            for (j = 0; j < n; ++j)
            {
                printf("\t%d", C[i][j]);
            }
            printf("\n\n");
        }

    return 0;
}