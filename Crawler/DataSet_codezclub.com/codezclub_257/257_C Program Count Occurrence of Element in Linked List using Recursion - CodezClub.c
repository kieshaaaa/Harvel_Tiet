/* Source: https://www.codezclub.com/count-occurrence-element-linked-list-using-recursion/ */
/*  C Program Count Occurrence of Element in Linked List using Recursion  */

#include <stdio.h>

void occur(int [], int, int, int, int *);

int main()
{
    int size, key, count = 0;
    int list[20];
    int i;

    printf("Enter the size of the list: ");
    scanf("%d", &size);
    printf("\nPrinting the list :: \n\n");
    for (i = 0; i < size; i++)
    {
        list[i] = rand() % size;
        printf("%d    ", list[i]);
    }
    printf("\n\nEnter the key to find it's occurrence: ");
    scanf("%d", &key);
    occur(list, size, 0, key, &count);
    printf("\n%d occurs for %d times.\n", key, count);
    return 0;
}

void occur(int list[], int size, int index, int key, int *count)
{
    if (size == index)
    {
        return;
    }
    if (list[index] == key)
    {
        *count += 1;
    }
    occur(list, size, index + 1, key, count);
}