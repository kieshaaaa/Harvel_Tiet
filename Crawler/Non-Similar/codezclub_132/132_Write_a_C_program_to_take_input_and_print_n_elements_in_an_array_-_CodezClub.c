/* Source: https://www.codezclub.com/c-to-input-and-print-n-elements-in-an-array/ */
/*  C program to take input and print n elements in an array  */

#include <stdio.h>
#define MAX_SIZE 1000 //Maximum size of the array

int main()
{
    int arr[MAX_SIZE]; //Declares an array of MAX_SIZE
    int i, N;

    /*
     * Reads size and elements in array
     */
    printf("Enter size of array: ");
    scanf("%d", &N);
    printf("\nEnter %d elements in the array : \n", N);
    for(i=0; i<N; i++)
    {
        printf("\nEnter %d element in the array : ", i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Prints all elements of array
     */
    printf("\nElements in array are: ");
    for(i=0; i<N; i++)
    {
        printf(" %d, ", arr[i]);
    }

    return 0;
}