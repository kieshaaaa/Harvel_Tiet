/* Source: https://www.includehelp.com/c-programs/find-the-median-of-two-arrays-using-a-divide-and-conquer-based-efficient-solution.aspx */
// C program to find the median of two arrays
// using a divide and conquer-based efficient solution

#include <stdio.h>

#define max(a, b) ((a > b) ? a : b)
#define min(a, b) ((a < b) ? a : b)

int median(int arr[], int size)
{
    if (size % 2 == 0)
        return (arr[size / 2] + arr[size / 2 - 1]) / 2;
    else
        return arr[size / 2];
}

int calculateMedian(int arr1[], int arr2[], int size)
{
    if (size <= 0)
        return -1;
    if (size == 1)
        return (arr1[0] + arr2[0]) / 2;
    if (size == 2)
        return (max(arr1[0], arr2[0]) + min(arr1[1], arr2[1])) / 2;

    int m1 = 0;
    int m2 = 0;

    m1 = median(arr1, size);
    m2 = median(arr2, size);

    if (m1 == m2)
        return m1;

    if (m1 < m2) {
        if (size % 2 == 0)
            return calculateMedian(arr1 + size / 2 - 1, arr2, size - size / 2 + 1);

        return calculateMedian(arr1 + size / 2, arr2, size - size / 2);
    }

    if (size % 2 == 0)
        return calculateMedian(arr2 + size / 2 - 1, arr1, size - size / 2 + 1);

    return calculateMedian(arr2 + size / 2, arr1, size - size / 2);
}

int main()
{
    int arr1[] = { 10, 11, 12, 13, 14 };
    int arr2[] = { 21, 22, 23, 24, 25 };

    int size1 = sizeof(arr1) / sizeof(arr1[0]);
    int size2 = sizeof(arr2) / sizeof(arr2[0]);

    if (size1 != size2) {
        printf("Size of both arrays are different\n");
        return 0;
    }

    printf("Median is: %d\n", calculateMedian(arr1, arr2, size1));

    return 0;
}
