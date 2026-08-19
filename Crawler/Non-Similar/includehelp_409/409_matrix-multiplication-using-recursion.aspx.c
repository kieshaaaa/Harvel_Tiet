/* Source: https://www.includehelp.com/c-programs/matrix-multiplication-using-recursion.aspx */
// C program to perform matrix multiplication using recursion.

#include <stdio.h>

void MatrixMultiplication(int row1, int col1, int matrix1[2][2], int row2, int col2, int matrix2[2][2], int matrix3[2][2])
{
    static int i = 0;
    static int j = 0;
    static int k = 0;

    if (i >= row1)
        return;

    if (i < row1) {
        if (j < col2) {
            if (k < col1) {

                matrix3[i][j] += matrix1[i][k] * matrix2[k][j];
                k++;

                MatrixMultiplication(row1, col1, matrix1, row2, col2, matrix2, matrix3);
            }

            k = 0;
            j++;

            MatrixMultiplication(row1, col1, matrix1, row2, col2, matrix2, matrix3);
        }

        j = 0;
        i++;
        MatrixMultiplication(row1, col1, matrix1, row2, col2, matrix2, matrix3);
    }
}

int main()
{

    int arr1[2][2] = { { 1, 2 },
        { 3, 4 } };

    int arr2[2][2] = { { 2, 3 },
        { 4, 5 } };

    int arr3[2][2] = { 0 };

    int i, j;

    printf("First Matrix :\n");
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++)
            printf("%d ", arr1[i][j]);
        printf("\n");
    }

    printf("\nSecond Matrix :\n");
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++)
            printf("%d ", arr2[i][j]);
        printf("\n");
    }

    MatrixMultiplication(2, 2, arr1, 2, 2, arr2, arr3);

    printf("\nMatrix multiplication:\n");
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++)
            printf("%d ", arr3[i][j]);
        printf("\n");
    }

    printf("\n");

    return 0;
}
