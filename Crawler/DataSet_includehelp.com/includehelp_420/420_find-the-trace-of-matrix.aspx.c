/* Source: https://www.includehelp.com/c-programs/find-the-trace-of-matrix.aspx */
// C program to find the trace of Matrix

#include <stdio.h>

int main()
{
    int Matrix[3][3] = {
        { 9, 8, 7 },
        { 5, 4, 6 },
        { 1, 2, 3 }
    };

    int i, j, trace = 0;

    printf("Matrix:\n");
    for (i = 0; i < 3; ++i) {
        for (j = 0; j < 3; ++j) {
            printf(" %d", Matrix[i][j]);
        }
        printf("\n");
    }

    //Find trace of elements
    for (i = 0; i < 3; ++i)
        trace = trace + Matrix[i][i];

    printf("Trace of matrix is: %d\n", trace);

    return 0;
}
