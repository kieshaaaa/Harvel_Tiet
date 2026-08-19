/* Source: https://www.codezclub.com/c-to-search-an-element-in-the-array/ */
/*  C Program to search an element in the array  */

#include <stdio.h>

int main()
{
    int data[100];
    int arraySize, index, searchValue, found;

    /*
     * Read size of array and elements in array
     */
    printf("Enter size of array :: ");
    scanf("%d", &arraySize);

    printf("\nEnter elements in array: \n");
    index = 0;
    while(index < arraySize)
    {
        printf("\nEnter %d element in array :: ", index + 1);
        scanf("%d", &data[index]);
        index++;
    }

    printf("\nEnter the element to search within the array: ");
    scanf("%d", &searchValue);

    /* Supposes that element is not in the array */
    found = 0;
    index = 0;
    while(index < arraySize)
    {
        /*
         * If element is found in the array
         */
        if(data[index]==searchValue)
        {
            found = 1;
            printf("\n%d is found at position %d", searchValue, index+1);
            break;
        }
        index++;
    }

    /*
     * If element is not found in array
     */
    if(found==0)
    {
        printf("\n%d is not found in the array", searchValue);
    }

    return 0;
}