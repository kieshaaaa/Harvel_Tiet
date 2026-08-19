#include <stdio.h>

int main() {
    int arr[5], i, j, temp, swapped, size = 5;
    
    for (i = 0; i < size; i++) {
        printf("Enter arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("\nBefore Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    // Bubble sort
    do {
        swapped = 0;
        for (i = 0; i < size - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
                swapped = 1;
            }
        }
    } while (swapped != 0);
    
    printf("\nAfter Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    return 0;
}