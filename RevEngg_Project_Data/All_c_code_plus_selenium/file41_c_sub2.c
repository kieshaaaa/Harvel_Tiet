#include <stdio.h>

int main() {
    int arr1[5] = {0}, arr2[5] = {0}, arr3[10] = {0};
    int i;

    // Inline read and initialize arr1 and arr2
    printf("Enter elements for arr1:\n");
    for (i = 0; i < 5; i++) {
        printf("arr1[%d]: ", i);
        scanf("%d", &arr1[i]);
    }

    printf("Enter elements for arr2:\n");
    for (i = 0; i < 5; i++) {
        printf("arr2[%d]: ", i);
        scanf("%d", &arr2[i]);
    }

    // Merge arr1 and arr2 into arr3 using conditional operator
    for (i = 0; i < 10; i++) {
        arr3[i] = (i < 5) ? arr1[i] : arr2[i - 5];
    }

    // Print merged array arr3
    printf("Merged Array Elements:\n");
    for (i = 0; i < 10; i++) {
        printf("arr3[%d] = %d\n", i, arr3[i]);
    }

    return 0;
}