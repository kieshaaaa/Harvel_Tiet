/* Source: https://www.codezclub.com/c-program-matrix-multiplication-using-recursion/ */
/*  C Program to implement Matrix Multiplication using Recursion  */

#include <stdio.h>

void multiply(int, int, int [][10], int, int, int [][10], int [][10]);
void display(int, int, int[][10]);

int main()
{
    int a[10][10], b[10][10], c[10][10] = {0};
    int m1, n1, m2, n2, i, j, k;

    printf("Enter rows for Matrix A :: ");
    scanf("%d", &m1);
    printf("\nEnter cols for Matrix A :: ");
    scanf("%d", &n1);
    printf("\nEnter rows for Matrix B :: ");
    scanf("%d", &m2);
    printf("\nEnter cols for Matrix B :: ");
    scanf("%d", &n2);

    if (n1 != m2)
    {
        printf("\nMatrix multiplication not possible.\n");
    }
    else
    {
        printf("\nEnter elements in Matrix A :: \n");
        for (i = 0; i < m1; i++)
        for (j = 0; j < n1; j++)
        {
            printf("\nEnter A[%d][%d] element :: ",i,j);
            scanf("%d", &a[i][j]);
        }

        printf("\nEnter elements in Matrix B :: \n");
        for (i = 0; i < m1; i++)
        for (j = 0; j < n1; j++)
        {
            printf("\nEnter B[%d][%d] element :: ",i,j);
            scanf("%d", &a[i][j]);
        }

        multiply(m1, n1, a, m2, n2, b, c);
    }
    printf("\nAfter matrix multiplication of A and B, The result is A * B = C :: \n");

    printf("\nElements in Matrix C are :: \n");

    display(m1, n2, c);
    
    return 0;
}

void multiply (int m1, int n1, int a[10][10], int m2, int n2, int b[10][10], int c[10][10])
{
    static int i = 0, j = 0, k = 0;

    if (i >= m1)
    {
        return;
    }
    else if (i < m1)
    {
        if (j < n2)
        {
            if (k < n1)
            {
                c[i][j] += a[i][k] * b[k][j];
                k++;
                multiply(m1, n1, a, m2, n2, b, c);
            }
            k = 0;
            j++;
            multiply(m1, n1, a, m2, n2, b, c);
        }
        j = 0;
        i++;
        multiply(m1, n1, a, m2, n2, b, c);
    }
}



void display(int m1, int n2, int c[10][10])
{
    int i, j;

    for (i = 0; i < m1; i++)
    {
        for (j = 0; j < n2; j++)
        {
            printf("    %d   ", c[i][j]);
        }
        printf("\n");
    }
}