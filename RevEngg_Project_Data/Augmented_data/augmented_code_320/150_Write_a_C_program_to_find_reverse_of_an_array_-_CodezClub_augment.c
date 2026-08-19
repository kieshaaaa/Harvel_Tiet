/* Source: https://www.codezclub.com/c-program-to-find-reverse-an-array/ */
/*  C Program to find reverse of an array  */

#include <stdio.h>

int main()
{
    int data[100], reversed[100];
    int arraySize, index, reverseIndex;

    printf("Enter size of the array: ");
    scanf("%d", &arraySize);
    printf("\nEnter elements in array :: \n");
    index = 0;
    while(index < arraySize)
    {
        printf("\nEnter %d element in array :: ", index + 1);
        scanf("%d", &data[index]);
        index++;
    }

    reverseIndex = 0;
    index = arraySize - 1;
    while(index >= 0)
    {
        reversed[reverseIndex] = data[index];
        reverseIndex++;
        index--;
    }

    printf("\nReversed array : ");
    index = 0;
    while(index < arraySize)
    {
        printf(" %d ", reversed[index]);
        index++;
    }

    return 0;
}