/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-the-largest-contiguous-subarray.aspx */
// C program to find the sum of largest contiguous subarray

#include <stdio.h>

int main()
{
    int i = 0, j = 0, t1 = 0, t2 = 0;
    int large = 0;
    int arr[7];

    printf("Enter the  elements of the array: ");

    for (int i = 0; i < 7; i++)
        scanf("%d", &arr[i]);

    large = arr[0];

    for (i = 0; i < 7; i++) {
        int sum = 0;
        for (int j = i; j < 7; j++) {
            sum = sum + arr[j];

            if (sum > large) {
                t1 = i;
                t2 = j;

                large = sum;
            }
        }
    }

    printf("The largest contiguous subarray: ");
    for (i = t1; i <= t2; i++)
        printf(" %d ", arr[i]);

    printf("\nThe sum of the largest contiguous subarray: %d\n", large);

    return 0;
}
