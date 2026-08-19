/* Source: https://www.codezclub.com/c-program-to-count-frequency-of-element-in-array/ */
/* C program to count frequency of each element in an array */

#include <stdio.h>

int main()
{
    int data[100], occurrences[100];
    int n, i, j, counter;

    /*
     * Read size of array and elements in array
     */
    printf("Enter size of array: ");
    scanf("%d", &n);

    printf("\nEnter elements in array:  \n");
    i = 0;
    while(i < n)
    {
         printf("\nEnter %d element in array: ",i+1);
        scanf("%d", &data[i]);
        occurrences[i] = -1;
        i++;
    }

    /*
     * Counts frequency of each element
     */
    i = 0;
    while(i < n)
    {
        counter = 1;
        j = i + 1;
        while(j < n)
        {
            if(data[i]==data[j])
            {
                counter++;
                occurrences[j] = 0;
            }
            j++;
        }

        if(occurrences[i]!=0)
        {
            occurrences[i] = counter;
        }
        i++;
    }

    /*
     * Prints frequency of each element
     */
    printf("\nFrequency of all elements of array : \n");
    i = 0;
    while(i < n)
    {
        if(occurrences[i]!=0)
        {
            printf("%d occurs %d times\n", data[i], occurrences[i]);
        }
        i++;
    }

    return 0;
}