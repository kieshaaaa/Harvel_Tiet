/* Source: https://www.codezclub.com/c-to-delete-element-from-array/ */
/*  C program to delete element from an array  */

#include <stdio.h>

int main()
{
    int arr[100];
    int i, n, position;

    /*
     * Reads size and elements in array from user
     */
    printf("Enter size of the array : ");
    scanf("%d", &n);

    printf("\nEnter %d elements in array : \n",n);
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in array : ",i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Reads the position to be deleted from user
     */
    printf("\nEnter the element position to delete : ");
    scanf("%d", &position);

    /*
     * Check if the position is valid
     */
    if(position==n+1 || position<0)
    {
        printf("\nInvalid position! Please enter position between 1 to %d", n);
    }
    else
    {
        /*
         * If delete position is valid then delete the specified element
         */
        for(i=position-1; i<n-1; i++)
        {
            arr[i] = arr[i+1];
        }
    }

    /*
     * Prints the array after delete operation
     */
    printf("\nElements of array after delete are :: ");
    for(i=0; i<n-1; i++)
    {
        printf(" %d ", arr[i]);
    }

    return 0;
}