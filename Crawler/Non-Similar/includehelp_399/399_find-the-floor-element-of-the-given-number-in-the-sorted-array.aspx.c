/* Source: https://www.includehelp.com/c-programs/find-the-floor-element-of-the-given-number-in-the-sorted-array.aspx */
// C program to find floor element of given number in sorted array

#include <stdio.h>

int FindFloorItem(int arr[], int size, int item)
{
    int index = 0;

    for (index = 0; index < size - 1; index++) {
        if (arr[index] == item)
            return index;

        if (arr[index] <= item && arr[index + 1] > item)
            return index;
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
    index = FindFloorItem(arr, size, item);

    if (index == -1)
        printf("Floor item doesn't exist in array\n");
    else
        printf("Flooring of item %d is: %d\n", item, arr[index]);

    return 0;
}
