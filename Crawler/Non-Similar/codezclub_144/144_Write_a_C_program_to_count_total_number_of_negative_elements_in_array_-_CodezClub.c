/* Source: https://www.codezclub.com/c-to-count-total-negative-elements-in-array/ */
/*  C program to count total number of negative elements in array  */

#include <stdio.h>

int main()
{
    int arr[100]; //Declares an array of size 100
    int i, n, count=0;

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &n);

    printf("\nEnter elements in array : \n");
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in array : ",i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Counts total number of negative elements in array
     */
    for(i=0; i<n; i++)
    {
        if(arr[i]<0)
        {
            count++;
        }
    }

    printf("\nTotal number of negative elements = %d", count);

    return 0;
}