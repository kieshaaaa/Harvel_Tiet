/* Source: https://www.includehelp.com/c-programs/find-two-elements-whose-sum-is-closest-to-zero.aspx */
// C program to find two elements
// whose sum is closest to zero

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int arr[] = { 62, 35, -15, 20, -10, 35 };
    int count = 0;

    int i = 0;
    int j = 0;

    int msum = 0;
    int sum = 0;
    int min1 = 0;
    int min2 = 0;

    min1 = 0;
    min2 = 1;
    msum = arr[0] + arr[1];

    for (i = 0; i < 5; i++) {
        for (j = i + 1; j < 5; j++) {
            sum = arr[i] + arr[j];
            if (abs(msum) > abs(sum)) {
                msum = sum;
                min1 = i;
                min2 = j;
            }
        }
    }

    printf("Elements their sum is closest to 0 are %d, %d\n", arr[min1], arr[min2]);
    return 0;
}
