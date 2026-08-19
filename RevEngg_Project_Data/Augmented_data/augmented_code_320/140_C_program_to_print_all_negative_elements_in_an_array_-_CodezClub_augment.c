/* Source: https://www.codezclub.com/c-to-print-negative-elements-in-array/ */
/*  C program to print all negative elements in an array  */

#include <stdio.h>

int main()
{
    int data[100]; //Declares an array of size 100
    int j, size;

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &size);

    printf("\nEnter %d elements in array :: \n ",size);
    j=0;
    while(j<size)
    {
        printf("\nEnter %d element in array :: ",j+1);
        scanf("%d", &data[j]);
        j++;
    }

    /*
     * Finds all negative elements in array
     */
    printf("\nAll negative elements in array are :: ");
    j=0;
    while(j<size)
    {
        if(data[j]<0)
        {
            printf(" %d ", data[j]);
        }
        j++;
    }

    return 0;
}