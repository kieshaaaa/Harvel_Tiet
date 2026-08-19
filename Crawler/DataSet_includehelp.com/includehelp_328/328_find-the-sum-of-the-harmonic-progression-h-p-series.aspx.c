/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-the-harmonic-progression-h-p-series.aspx */
// C program to find the
// sum of Harmonic Progression (H.P.) series

#include <stdio.h>

int main()
{
    int n = 0;
    float i = 0;

    float sum = 0;
    float term = 0;

    printf("Enter total term: ");
    scanf("%d", &n);

    sum = 0;
    printf("1 ");
    for (i = 1; i <= n; i++) {
        printf(" + 1/%d", (int)i + 1);
        term = 1 / i;
        sum = sum + term;
    }
    printf("\nSum of H.P Series:  %f\n", sum);

    return 0;
}
