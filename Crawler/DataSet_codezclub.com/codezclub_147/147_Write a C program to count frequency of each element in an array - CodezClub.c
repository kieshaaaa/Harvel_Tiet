/* Source: https://www.codezclub.com/c-program-to-count-frequency-of-element-in-array/ */
/* C program to count frequency of each element in an array */

#include <stdio.h>

int main()
{
    int arr[100], freq[100];
    int size, i, j, count;

    /*
     * Read size of array and elements in array
     */
    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array:  \n");
    for(i=0; i<size; i++)
    {
         printf("\nEnter %d element in array: ",i+1);
        scanf("%d", &arr[i]);
        freq[i] = -1;
    }

    /*
     * Counts frequency of each element
     */
    for(i=0; i<size; i++)
    {
        count = 1;
        for(j=i+1; j<size; j++)
        {
            if(arr[i]==arr[j])
            {
                count++;
                freq[j] = 0;
            }
        }

        if(freq[i]!=0)
        {
            freq[i] = count;
        }
    }

    /*
     * Prints frequency of each element
     */
    printf("\nFrequency of all elements of array : \n");
    for(i=0; i<size; i++)
    {
        if(freq[i]!=0)
        {
            printf("%d occurs %d times\n", arr[i], freq[i]);
        }
    }

    return 0;
}