/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-the-arithmetic-progression-a-p-series.aspx */
// C program to find the sum of
// Arithmetic Progression (A.P.) series

#include <stdio.h>
#include <math.h>

int main()
{
    int sum = 0;

    int a = 0;
    int n = 0;
    int d = 0;
    int i = 0;
    int t = 0;

    printf("Enter the first term: ");
    scanf("%d", &a);

    printf("Enter the value of n: ");
    scanf("%d", &n);

    printf("Enter the difference: ");
    scanf("%d", &d);

    sum = (n * (2 * a + (n - 1) * d)) / 2;
    t = a + (n - 1) * d;

    printf("Sum of the A.P series: ");
    i = a;
    while (i <= t) {
        if (i == t) {
            printf("%d = %d ", i, sum);
            break;
        }

        printf("%d + ", i);

        i = i + d;
    }

    printf("\n");
    return 0;
}
