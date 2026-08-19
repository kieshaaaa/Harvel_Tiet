/* Source: https://www.codezclub.com/c-to-copy-all-elements-of-one-array-to-another/ */
/* C program to copy elements of one array to another  */

#include <stdio.h>

int main()
{
    int first[100], second[100];
    int i, size;

    /*
     * Reads size and elements in the array from user
     */
    printf("Enter the size of the array : ");
    scanf("%d", &size);
    printf("\nEnter %d elements of first array : \n",size);
    for(i=0; i<size; i++)
    {
        printf("\nEnter %d element of first array : ",i+1);
        scanf("%d", &first[i]);
    }

    /*
     * Copies all elements from first array to second array
     */
    for(i=0; i<size; i++)
    {
        second[i] = first[i];
    }

    /*
     * Prints all elements of first array
     */
    printf("\nElements of first array are : ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", first[i]);
    }

    /*
     * Prints all elements of second array
     */
    printf("\n\nElements of second array are : ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", second[i]);
    }

    return 0;
}