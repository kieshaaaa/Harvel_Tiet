/* Source: https://www.codezclub.com/c-check-sparse-matrix/ */
/*  C Program to Check a Matrix is Sparse Matrix or Not  */

#include <stdio.h>

int main()
{
    int A[10][10],i,j,m,n;
    int row, col, total = 0;

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


    /*
     * Counts total number of zero elements in the matrix
     */
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            /*
             * If the current element is zero
             */
            if(A[row][col] == 0)
            {
                total++;
            }
        }
    }

    if(total >= (row * col)/2)
    {
        printf("\nThe given matrix is a Sparse matrix.");
    }
    else
    {
        printf("\nThe given matrix is not Sparse matrix.");
    }

    return 0;
}