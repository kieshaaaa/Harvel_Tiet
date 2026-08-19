/* Source: https://www.codezclub.com/c-to-count-even-odd-elements-in-an-array/ */
/*  C program to count even and odd elements in an array  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the array

int main()
{
    int arr[MAX_SIZE];
    int i, N, even, odd;

    /*
     * Reads size and elements in array
     */
    printf("Enter size of the array: ");
    scanf("%d", &N);
    printf("\nEnter %d elements in array :: \n", N);
    for(i=0; i<N; i++)
    {
        printf("\nEnter %d element in array :: ", i+1);
        scanf("%d", &arr[i]);
    }

    /* Assuming that there are 0 even and odd elements */
    even = 0;
    odd  = 0;

    for(i=0; i<N; i++)
    {
        /* If the current element of array is even then increment even count */
        if(arr[i]%2 == 0)
        {
            even++;
        }
        else
        {
            odd++;
        }
    }

    printf("\nTotal even elements: %d\n", even);
    printf("\nTotal odd elements: %d\n", odd);

    return 0;
}