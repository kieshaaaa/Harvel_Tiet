/* Source: https://www.codezclub.com/c-find-sum-of-upper-triangular-matrix/ */
/*  C program to find Sum of upper triangular matrix  */

#include <stdio.h>

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
     * Finds sum of upper triangular matrix
     */
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            if(col>row)
            {
                sum += A[row][col];
            }
        }
    }

    printf("\nSum of upper triangular matrix = %d \n\n", sum);

    return 0;
}