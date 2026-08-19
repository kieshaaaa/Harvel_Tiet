/* Source: https://www.codezclub.com/c-to-find-sum-of-all-elements-of-an-array/ */
/*  C program to find sum of all elements of an array  */

#include <stdio.h>
#define MAX_SIZE 100

int main()
{
    int array[MAX_SIZE];
    int j, n, sum=0;

    /*
     * Reads size and elements in array from user
     */
    printf("Enter size of the array: ");
    scanf("%d", &n);
    printf("\nEnter %d elements in the array: \n", n);
    j=0;
    while(j<n)
    {
        printf("\nEnter %d element in the array: ", j+1);
        scanf("%d", &array[j]);
        j++;
    }

    /*
     * Adds each element of array to sum
     */
    j=0;
    while(j<n)
    {
        sum = sum + array[j];
        j++;
    }

    printf("\nSum of all elements of array = %d \n", sum);

    return 0;
}