/* Source: https://www.codezclub.com/c-to-count-even-odd-elements-in-an-array/ */
/*  C program to count even and odd elements in an array  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the array

int main()
{
    int array[MAX_SIZE];
    int index, numElements, evenCount, oddCount;

    /*
     * Reads size and elements in array
     */
    printf("Enter size of the array: ");
    scanf("%d", &numElements);
    printf("\nEnter %d elements in array :: \n", numElements);
    index = 0;
    while(index < numElements)
    {
        printf("\nEnter %d element in array :: ", index + 1);
        scanf("%d", &array[index]);
        index++;
    }

    /* Assuming that there are 0 even and odd elements */
    evenCount = 0;
    oddCount  = 0;

    index = 0;
    while(index < numElements)
    {
        /* If the current element of array is even then increment even count */
        if(array[index]%2 == 0)
        {
            evenCount++;
        }
        else
        {
            oddCount++;
        }
        index++;
    }

    printf("\nTotal even elements: %d\n", evenCount);
    printf("\nTotal odd elements: %d\n", oddCount);

    return 0;
}