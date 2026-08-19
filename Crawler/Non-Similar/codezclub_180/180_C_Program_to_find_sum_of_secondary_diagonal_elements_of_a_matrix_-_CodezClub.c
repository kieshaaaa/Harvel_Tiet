/* Source: https://www.codezclub.com/c-find-sum-of-opposite-diagonal-elements-of-matrix/ */
/*  C Program to find sum of secondary diagonal elements of a matrix  */

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
     * Finds the sum of minor diagonal elements
     */
        for (i = 0; i < m; ++i)
        {
             sum = sum + A[i][m - i - 1];
        }


    printf("\nSum of Secondary diagonal elements = %d", sum);

    return 0;
}