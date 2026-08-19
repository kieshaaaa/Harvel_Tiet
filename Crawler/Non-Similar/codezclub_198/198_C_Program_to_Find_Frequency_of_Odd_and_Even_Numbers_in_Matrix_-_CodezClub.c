/* Source: https://www.codezclub.com/write-a-c-program-to-find-frequency-of-odd-even-numbers-in-matrix/ */
/*  C Program to Find Frequency of Odd and Even Numbers in Matrix  */

#include <stdio.h>

int main()
{
        static int array[10][10];
        int i, j, m, n, even = 0, odd = 0;

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
                 scanf("%d", &array[i][j]);
                 if ((array[i][j] % 2) == 0)
                 {
                     ++even;
                 }
                 else
                     ++odd;
             }
        }
        printf("\nThe given matrix is \n\n");
        for (i = 0; i < m; ++i)
        {
        for (j = 0; j < n; ++j)
        {
            printf("\t%d", array[i][j]);
        }
        printf("\n\n");
    }
    printf("\nThe frequency of occurrence of odd number  = %d \n", odd);
    printf("\nThe frequency of occurrence of even number = %d\n", even);

    return 0;

}