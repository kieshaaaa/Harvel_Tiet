/* Source: https://www.codezclub.com/c-program-to-find-reverse-an-array/ */
/*  C Program to find reverse of an array  */

#include <stdio.h>

int main()
{
    int arr[100], reverse[100];
    int size, i, j;

    printf("Enter size of the array: ");
    scanf("%d", &size);
    printf("\nEnter elements in array :: \n");
    for(i=0; i<size; i++)
    {
        printf("\nEnter %d element in array :: ",i+1);
        scanf("%d", &arr[i]);
    }

    j=0;
    for(i=size-1; i>=0; i--)
    {
        reverse[j] = arr[i];
        j++;
    }

    printf("\nReversed array : ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", reverse[i]);
    }

    return 0;
}