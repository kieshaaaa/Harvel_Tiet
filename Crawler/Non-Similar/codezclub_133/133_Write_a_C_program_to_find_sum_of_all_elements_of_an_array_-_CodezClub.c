/* Source: https://www.codezclub.com/c-to-find-sum-of-all-elements-of-an-array/ */
/*  C program to find sum of all elements of an array  */

#include <stdio.h>
#define MAX_SIZE 100

int main()
{
    int arr[MAX_SIZE];
    int i, n, sum=0;

    /*
     * Reads size and elements in array from user
     */
    printf("Enter size of the array: ");
    scanf("%d", &n);
    printf("\nEnter %d elements in the array: \n", n);
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in the array: ", i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Adds each element of array to sum
     */
    for(i=0; i<n; i++)
    {
        sum = sum + arr[i];
    }

    printf("\nSum of all elements of array = %d \n", sum);

    return 0;
}