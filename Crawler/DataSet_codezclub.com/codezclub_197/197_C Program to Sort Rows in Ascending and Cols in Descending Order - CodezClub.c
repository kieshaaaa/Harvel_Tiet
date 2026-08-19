/* Source: https://www.codezclub.com/c-sort-rows-ascending-cols-descendng-order/ */
/* C Program to Sort Rows in Ascending and Cols in Descending Order  */

#include <stdio.h>

int main()
{
    static int array1[10][10], array2[10][10];
    int i, j, k, a, m, n;

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
                 array2[i][j] = array1[i][j];
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
    printf("\nAfter arranging rows in ascending order : \n");
    for (i = 0; i < m; ++i)
    {
        for (j = 0; j < n; ++j)
        {
            for (k =(j + 1); k < n; ++k)
            {
                if (array1[i][j] > array1[i][k])
                {
                    a = array1[i][j];
                    array1[i][j] = array1[i][k];
                    array1[i][k] = a;
                }
            }
        }
    }
    for (i = 0; i < m; ++i)
    {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", array1[i][j]);
        }
        printf("\n\n");
    }
    printf("\nAfter arranging the columns in descending order : \n");
    for (j = 0; j < n; ++j)
    {
        for (i = 0; i < m; ++i)
        {
            for (k = i + 1; k < m; ++k)
            {
                if (array2[i][j] < array2[k][j])
                {
                    a = array2[i][j];
                    array2[i][j] = array2[k][j];
                    array2[k][j] = a;
                }
            }
        }
    }
    for (i = 0; i < m; ++i)
    {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", array2[i][j]);
        }
        printf("\n\n");
    }

    return 0;
}