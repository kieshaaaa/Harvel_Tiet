/* Source: https://www.codezclub.com/c-to-print-negative-elements-in-array/ */
/*  C program to print all negative elements in an array  */

#include <stdio.h>

int main()
{
    int arr[100]; //Declares an array of size 100
    int i, n;

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &n);

    printf("\nEnter %d elements in array :: \n ",n);
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in array :: ",i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Finds all negative elements in array
     */
    printf("\nAll negative elements in array are :: ");
    for(i=0; i<n; i++)
    {
        if(arr[i]<0)
        {
            printf(" %d ", arr[i]);
        }
    }

    return 0;
}