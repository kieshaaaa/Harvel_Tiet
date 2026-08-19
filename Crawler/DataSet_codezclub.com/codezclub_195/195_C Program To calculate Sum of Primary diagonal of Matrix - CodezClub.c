/* Source: https://www.codezclub.com/c-find-sum-of-primary-diagonal-of-matrix/ */
/*  C Program To calculate Sum of Primary diagonal of Matrix  */

#include<stdio.h>

int main()
{
    int array1[10][10],i,j,m,n,sum = 0;
    
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
                 scanf("%d", &array1[i][j]);
        }
    }
    
    printf("\nThe given matrix is \n\n");
        for (i = 0; i < m; ++i)
        {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", array1[i][j]);
        }
        printf("\n\n");
    }
    
    for(i=0;i<m;i++)
    sum = sum + array1[i][i];
    printf("\nTHE SUM OF PRIMARY DIAGONAL OF MATRIX IS :: %d \n", sum);
  
   return 0;
}