/* Source: https://www.codezclub.com/c-check-whether-matrix-identity-matrix/ */
/*  C program to check whether a Matrix is Identity Matrix or not  */

#include <stdio.h>

int main()
{
    int A[10][10],B[10][10],i,j,m,n;
    int row, col, isIdentity;

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
     * Checks whether it is Identity matrix or not
     */
    isIdentity = 1;
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {

            if(row==col && A[row][col]!=1)
            {
                /* If elements of main diagonal is not equal to 1 */
                isIdentity = 0;
            }
            else if(row!=col && A[row][col]!=0)
            {
                /* If other elements than main diagonal is not equal to 0 */
                isIdentity = 0;
            }
        }
    }

    /*
     * If it is an Identity matrix
     */
    if(isIdentity==1)
    {
        printf("\nThe given matrix is an Identity Matrix.\n");

        /*
         * Prints the Identity matrix
         */
        for (i = 0; i < m; ++i)
        {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", A[i][j]);
        }
        printf("\n\n");
    }
    }
    else
    {
        printf("The given matrix is not Identity Matrix");
    }

    return 0;
}