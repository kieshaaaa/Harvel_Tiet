/* Source: https://www.codezclub.com/c-count-duplicate-elements-in-an-array/ */
/*  C program count total number of duplicate elements in an array */

#include <stdio.h>

int main()
{
    int arr[100];
    int i,j, n, count = 0;

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
     * Finds all duplicate elements in array
     */
    for(i=0; i<n; i++)
    {
        for(j=i+1; j<n; j++)
        {
            /* If duplicate found then increment count by 1 */
            if(arr[i]==arr[j])
            {
                count++;
                break;
            }
        }
    }

    printf("\nTotal number of duplicate elements found in array = %d", count);

    return 0;
}