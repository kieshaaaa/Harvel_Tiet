/* Source: https://www.codezclub.com/c-to-sort-an-array-in-descending-order/ */
/*  C program to sort array elements in descending order  */

#include <stdio.h>

int main()
{
    int arr[100];
    int size, i, j, temp;

    printf("Enter size of array :: ");
    scanf("%d", &size);

    printf("\nEnter elements in array::\n ");
    for(i=0; i<size; i++)
    {
        printf("\nEnter %d element in an array :: ",i+1);
        scanf("%d", &arr[i]);
    }

    for(i=0; i<size; i++)
    {
        for(j=i+1; j<size; j++)
        {
            if(arr[i] < arr[j])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    printf("\nElements of array in sorted descending order :: ");
    for(i=0; i<size; i++)
    {
        printf(" %d ", arr[i]);
    }

    return 0;
}