/* Source: https://www.codezclub.com/c-multiply-two-matrices/ */
/*  C Program for multiplication of two matrix using array  */

#include <stdio.h>
 
int main()
{
    int A[3][3], B[3][3], C[3][3];
    int row, col, i, sum;
 
    /*
     * Reads elements in first matrix from user
     */
    printf("Enter elements in matrix A of size 3x3: \n");
    for(row=0; row<3; row++)
    {
        for(col=0; col<3; col++)
        {
            scanf("%d", &A[row][col]);
        }
    }
 
    /*
     * Reads elements in second matrix from user
     */
    printf("\nEnter elements in matrix B of size 3x3: \n");
    for(row=0; row<3; row++)
    {
        for(col=0; col<3; col++)
        {
            scanf("%d", &B[row][col]);
        }
    }
 
    /*
     * Multiplies both matrices A*B
     */
    for(row=0; row<3; row++)
    {
        for(col=0; col<3; col++)
        {
            sum = 0;
            /*
             * Multiplies row of first matrix to column of second matrix
             * And stores the sum of product of elements in sum.
             */
            for(i=0; i<3; i++)
            {
                sum += A[row][i] * B[i][col];
            }
 
            C[row][col] = sum;
        }
    }
 
    /*
     * Prints the product of matrices
     */
    printf("\nProduct of Matrix A * B = \n");
    for(row=0; row<3; row++)
    {
        for(col=0; col<3; col++)
        {
            printf("%d ", C[row][col]);
        }
        printf("\n");
    }
 
    return 0;
}