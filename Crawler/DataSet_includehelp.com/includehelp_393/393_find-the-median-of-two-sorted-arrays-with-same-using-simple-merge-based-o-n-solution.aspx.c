/* Source: https://www.includehelp.com/c-programs/find-the-median-of-two-sorted-arrays-with-same-using-simple-merge-based-o-n-solution.aspx */
// C program to find the median of two arrays
// using a simple merge-based O(n) solution

#include <stdio.h>

int calculateMedian(int arr1[], int arr2[], int size)
{
    int i = 0;
    int j = 0;

    int med1 = -1;
    int med2 = -1;

    int loop = 0;

    for (loop = 0; loop <= size; loop++) {
        if (i == size) {
            med1 = med2;
            med2 = arr2[0];
            break;
        }
        else if (j == size) {
            med1 = med2;
            med2 = arr1[0];
            break;
        }

        if (arr1[i] <= arr2[j]) {
            med1 = med2;
            med2 = arr1[i];
            i++;
        }
        else {
            med1 = med2;
            med2 = arr2[j];
            j++;
        }
    }

    return (med1 + med2) / 2;
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
