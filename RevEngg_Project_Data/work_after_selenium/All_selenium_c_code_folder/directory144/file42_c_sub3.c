#include <stdio.h>

int main() {
    int arr[5], i, j, key, size = 5;
    
    for (i = 0; i < size; i++) {
        printf("Enter arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("\nBefore Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    // Insertion sort
    for (i = 1; i < size; i++) {
        key = arr[i];
        j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
    
    printf("\nAfter Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    return 0;
}