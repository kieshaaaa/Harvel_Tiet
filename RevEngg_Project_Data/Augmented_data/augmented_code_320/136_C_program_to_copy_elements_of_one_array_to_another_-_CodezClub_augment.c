/* Source: https://www.codezclub.com/c-to-copy-all-elements-of-one-array-to-another/ */
/* C program to copy elements of one array to another  */

#include <stdio.h>

int main()
{
    int arr1[100], arr2[100];
    int j, arraySize;

    /*
     * Reads size and elements in the array from user
     */
    printf("Enter the size of the array : ");
    scanf("%d", &arraySize);
    printf("\nEnter %d elements of first array : \n",arraySize);
    j = 0;
    while(j < arraySize)
    {
        printf("\nEnter %d element of first array : ",j+1);
        scanf("%d", &arr1[j]);
        j++;
    }

    /*
     * Copies all elements from first array to second array
     */
    j = 0;
    while(j < arraySize)
    {
        arr2[j] = arr1[j];
        j++;
    }

    /*
     * Prints all elements of first array
     */
    printf("\nElements of first array are : ");
    j = 0;
    while(j < arraySize)
    {
        printf(" %d ", arr1[j]);
        j++;
    }

    /*
     * Prints all elements of second array
     */
    printf("\n\nElements of second array are : ");
    j = 0;
    while(j < arraySize)
    {
        printf(" %d ", arr2[j]);
        j++;
    }

    return 0;
}