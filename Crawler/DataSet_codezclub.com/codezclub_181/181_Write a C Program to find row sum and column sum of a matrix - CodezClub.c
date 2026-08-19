/* Source: https://www.codezclub.com/c-find-sum-of-row-and-columns-of-matrix/ */
/*  C Program to find row sum and column sum of a matrix  */

#include <stdio.h>

int main()
{
    int A[10][10],i,j,m,n;
    int row, col, sum = 0;

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
    /*
     * Finds the sum of elements of each row of matrix
     */
    for(row=0; row<m; row++)
    {
        sum = 0;
        for(col=0; col<n; col++)
        {
            sum += A[row][col];
        }

        printf("\nSum of elements of Row %d = %d\n", row+1, sum);
    }

    /*
     * Finds the sum of elements of each columns of matrix
     */
    for(row=0; row<m; row++)
    {
        sum = 0;
        for(col=0; col<n; col++)
        {
            sum += A[col][row];
        }

        printf("\nSum of elements of Column %d = %d\n", row+1, sum);
    }

    return 0;
}