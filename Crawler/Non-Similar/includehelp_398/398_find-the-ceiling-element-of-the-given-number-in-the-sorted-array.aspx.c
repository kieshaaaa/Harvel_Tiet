/* Source: https://www.includehelp.com/c-programs/find-the-ceiling-element-of-the-given-number-in-the-sorted-array.aspx */
// C program to find Ceiling element of given number in sorted array

#include <stdio.h>

int FindCeilingItem(int arr[], int size, int item)
{
    int index = 0;

    //if first item is greater than or equal to the given item.
    if (item <= arr[0])
        return 0;

    for (index = 0; index < size - 1; index++) {
        if (arr[index] == item)
            return index;

        if (arr[index] < item && arr[index + 1] >= item)
            return index + 1;
    }

    return -1;
}

int main()
{
    int arr[] = { 5, 7, 12, 15, 17, 19, 21 };

    int size = 0;
    int item = 8;
    int index = 0;

    size = sizeof(arr) / sizeof(arr[0]);
    index = FindCeilingItem(arr, size, item);

    if (index == -1)
        printf("Ceiling of item  %d doesn't exist in array\n", item);
    else
        printf("Ceiling of item %d is: %d\n", item, arr[index]);

    return 0;
}
