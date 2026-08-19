#include <stdio.h>

int main() {
    int arr[5], i, j, temp, size = 5;
    
    for (i = 0; i < size; i++) {
        printf("Enter arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("\nBefore Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    // Selection sort
    for (i = 0; i < size - 1; i++) {
        for (j = i + 1; j < size; j++) {
            if (arr[i] > arr[j]) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    
    printf("\nAfter Sorting:\n");
    for (i = 0; i < size; i++) {
        printf("arr[%d] : %d\n", i, arr[i]);
    }
    
    return 0;
}