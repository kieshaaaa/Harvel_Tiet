#include <stdio.h>

int main() {
    int arr1[5], arr2[5], arr3[10];
    int i;

    // Direct read array elements
    printf("Enter 5 elements for the first array:\n");
    for (i = 0; i < 5; ++i) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr1[i]);
    }

    printf("Enter 5 elements for the second array:\n");
    for (i = 0; i < 5; ++i) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr2[i]);
    }

    // Directly assigning values to merge
    for (i = 0; i < 5; ++i) {
        arr3[i] = arr1[i];
        arr3[i + 5] = arr2[i];
    }

    // Display merged array without using a loop inside printf
    printf("Merged Array:\n");
    for (i = 0; i < 10; ++i) {
        printf("Element %d: %d\n", i, arr3[i]);
    }

    return 0;
}