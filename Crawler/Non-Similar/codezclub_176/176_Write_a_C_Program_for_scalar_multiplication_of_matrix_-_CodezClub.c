/* Source: https://www.codezclub.com/c-perform-scalar-matrix-multiplication/ */
/*  C Program for scalar multiplication of matrix  */

#include <stdio.h>

int main()
{
    int A[10][10],i,j,m,n;
    int row, col, num;

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

    /* Reads number to perform scalar multiplication from user */
    printf("\nEnter any number to multiply with matrix :: ");
    scanf("%d", &num);

    /*
     * Performs scalar multiplication of matrix
     */
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            A[row][col] = num * A[row][col];
        }
    }

    /*
     * Prints the result of scalar multiplication of matrix
     */
    printf("\nScalar multiplication of matrix = \n\n");
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