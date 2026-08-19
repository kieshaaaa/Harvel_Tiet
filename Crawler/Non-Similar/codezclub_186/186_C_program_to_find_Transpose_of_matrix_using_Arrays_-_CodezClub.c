/* Source: https://www.codezclub.com/c-find-transpose-of-matrix/ */
/*  C program to find Transpose of a matrix using Arrays  */

int main()
{
    int A[10][10],B[10][10],i,j,m,n;
    int row, col, isSymmetric;

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

    printf("\nThe given matrix is : : \n\n");

        for (i = 0; i < m; ++i)
        {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", A[i][j]);
        }
        printf("\n\n");
    }

    /*
     * Finds the transpose of matrix A
     */
    for(row=0; row<m; row++)
    {
        for(col=0; col<n; col++)
        {
            /* Stores each row of matrix A to each column of matrix B */
            B[row][col] = A[col][row];
        }
    }


    /*
     * Prints the transpose of matrix A
     */
    printf("\nTranspose of matrix A :: \n\n");

        for (i = 0; i < m; ++i)
        {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", B[i][j]);
        }
        printf("\n\n");
    }

    return 0;
}