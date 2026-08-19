/* Source: https://www.codezclub.com/c-to-insert-element-in-array/ */
/*  C program to insert element in an array at specified position */

#include <stdio.h>

int main()
{
    int arr[100];
    int i, size, num, position;

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &size);
    printf("\nEnter %d elements in array :: \n",size);
    for(i=0; i<size; i++)
    {
         printf("\nEnter %d element in array :: ",i+1);
        scanf("%d", &arr[i]);
    }

    /*
     * Read element to insert and position of the element
     */
    printf("\nEnter element to insert : ");
    scanf("%d", &num);
    printf("\nEnter the element position : ");
    scanf("%d", &position);

    /*
     * If the position of element is not valid
     */
    if(position>size+1 || position<=0)
    {
        printf("\nInvalid position! Please enter position between 1 to %d", size);
    }
    else
    {
        /*
         * Inserts element in array and increases the size of the array
         */
        for(i=size; i>=position; i--)
        {
            arr[i] = arr[i-1];
        }
        arr[position-1] = num;
        size++;

        /*
         * Prints the new array after insert operation
         */
        printf("\nArray elements after insertion :: ");
        for(i=0; i<size; i++)
        {
            printf(" %d ", arr[i]);
        }
    }

    return 0;
}