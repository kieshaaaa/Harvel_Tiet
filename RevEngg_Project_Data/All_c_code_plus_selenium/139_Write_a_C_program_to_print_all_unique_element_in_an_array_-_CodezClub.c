/* Source: https://www.codezclub.com/c-to-print-unique-element-in-an-array/ */
/*  C program to print all unique element in an array  */

#include <stdio.h>

int main()
{
    int arr[100], size, isUnique;
    int i, j, k; //Used for loops

    /*
     * Reads size of the array
     */
    printf("Enter size of array: ");
    scanf("%d", &size);

    /*
     * Reads elements in array
     */
    printf("\nEnter %d elements in array :: \n",size);
    for(i=0; i<size; i++)
    {
        printf("\nEnter %d element in array :: ",i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Removes all duplicate elements from array
     */
    for(i=0; i<size; i++)
    {
        /* Assumes that the current array element is unique */
        isUnique = 1;

        for(j=i+1; j<size; j++)
        {
            /*
             * If any duplicate element is found
             */
            if(arr[i]==arr[j])
            {
                /* Remove the duplicate element */
                for(k=j; k<size-1; k++)
                {
                    arr[k] = arr[k+1];
                }

                size--;
                j--;
                isUnique = 0;
            }
        }

        /*
         * If array element is not unique
         * then also remove the current element
         */
        if(isUnique != 1)
        {
            for(j=i; j<size-1; j++)
            {
                arr[j] = arr[j+1];
            }

            size--;
            i--;
        }
    }

    /*
     * Prints all unique elements in array
     */
    printf("\nAll unique elements in the array are :: ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", arr[i]);
    }

    return 0;
}