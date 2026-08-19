/* Source: https://www.codezclub.com/c-to-delete-all-duplicate-elements-from-array/ */
/*  C program to delete all duplicate elements from an array  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the array

int main()
{
    int arr[MAX_SIZE]; //Declares an array of size 100
    int size; //Total number of elements in array
    int i, j, k; //Used for loop

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &size);

    printf("\nEnter elements in array : \n");
    for(i=0; i<size; i++)
    {
        printf("\nEnter %d element in array : ",i+1);
        scanf("%d", &arr[i]);
    }


    /*
     * Finds all duplicate elements in array
     */
    for(i=0; i<size; i++)
    {
        for(j=i+1; j<size; j++)
        {
            /* If any duplicate found */
            if(arr[i]==arr[j])
            {
                for(k=j; k<size; k++)
                {
                    arr[k] = arr[k+1];
                }

                /* Decrement size after removing one duplicate element */
                size--;

                /* If shifting of elements occur then don't increment j */
                j--;
            }
        }
    }


    /*
     * Print array after deleting duplicate elements
     */
    printf("\nArray elements after deleting duplicates : ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", arr[i]);
    }

    return 0;
}