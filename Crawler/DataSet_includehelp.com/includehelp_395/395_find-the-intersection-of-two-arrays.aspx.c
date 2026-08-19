/* Source: https://www.includehelp.com/c-programs/find-the-intersection-of-two-arrays.aspx */
// C program to find the Intersection of two arrays

#include <stdio.h>

int intersection(int arr1[], int arr2[], int arr3[])
{

    int i = 0;
    int j = 0;
    int k = 0;

    while ((i < 5) && (j < 5)) {
        if (arr1[i] < arr2[j]) {
            i++;
        }
        else if (arr1[i] > arr2[j]) {
            j++;
        }
        else {
            arr3[k] = arr1[i];
            i++;
            j++;
            k++;
        }
    }

    return k;
}

int main()
{
    int arr1[5] = { 1, 2, 3, 4, 5 };
    int arr2[5] = { 2, 3, 5, 7, 8 };
    int arr3[5] = { 0 };

    int len = 0;
    int cnt = 0;

    len = intersection(arr1, arr2, arr3);

    printf("Intersection is: ");
    for (cnt = 0; cnt < len; cnt++)
        printf("%d ", arr3[cnt]);

    printf("\n");

    return 0;
}
