/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-the-geometric-progression-g-p-series.aspx */
// C program to find the
// sum of Geometric Progression (G.P.) series

#include <stdio.h>
#include <math.h>

int main()
{

    int n = 0;

    float a = 0;
    float r = 0;
    float i = 0;
    float l = 0;
    float s = 0;

    printf("Enter the first term: ");
    scanf("%f", &a);

    printf("Enter the value of n: ");
    scanf("%d", &n);

    printf("Enter the common ratio: ");
    scanf("%f", &r);

    l = a * pow(r, n - 1);
    s = (a * (1 - pow(r, n + 1))) / (1 - r);

    printf("Last term of G.P. series: %f", l);
    printf("\nSum of the G.P. series  : %f\n", s);

    return 0;
}
