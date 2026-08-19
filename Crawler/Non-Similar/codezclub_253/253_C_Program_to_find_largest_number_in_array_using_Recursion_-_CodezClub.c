/* Source: https://www.codezclub.com/c-program-find-biggest-number-using-recursion/ */
/*  C Program to find largest number in array using Recursion  */

#include <stdio.h>

int large(int[], int, int);

int main()
{
    int size;
    int largest;
    int list[20];
    int i;

    printf("Enter size of the list :: ");
    scanf("%d", &size);
    printf("\nPrinting the list :: \n\n");
    for (i = 0; i < size ; i++)
    {
        list[i] = rand() % size;
        printf("\t%d", list[i]);
    }
    if (size == 0)
    {
        printf("\nEmpty list\n");
    }
    else
    {
        largest = list[0];
        largest = large(list, size - 1, largest);
        printf("\n\nThe largest number in the list is :: %d \n", largest);
    }
    
    return 0;
}
int large(int list[], int size, int largest)
{
    if (size == 1)
        return largest;

    if (size > -1)
    {
        if (list[size] > largest)
        {
            largest = list[size];
        }
        return(largest = large(list, size - 1, largest));
    }
    else
    {
        return largest;
    }
}