#include <stdio.h>

int main() {
    int arr[10], i;
    
    printf("Enter 10 elements of the array:\n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("\nOriginal Array:\n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: %d\n", i, arr[i]);
    }
    
    for (i = 0; i < 10; i++) {
        arr[i] = arr[i] % 2;
    }
    
    printf("\nModified Array (Even=0, Odd=1):\n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: %d\n", i, arr[i]);
    }
    
    return 0;
}