#include <stdio.h>

int main() {
    int arr[10], i;
    printf("Populate array with 10 elements:\n");
    
    for (i = 0; i < 10; ++i) {
        printf("Enter arr[%d]: ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("\nBefore Replacing:\n");
    for (i = 0; i < 10; ++i) {
        printf("arr[%d]: %d\n", i, arr[i]);
    }
    
    for (i = 0; i < 10; ++i) {
        arr[i] = (arr[i] % 2) ? 1 : 0;
    }
    
    printf("\nAfter Replacing (0=Even, 1=Odd):\n");
    for (i = 0; i < 10; ++i) {
        printf("arr[%d]: %d\n", i, arr[i]);
    }
    
    return 0;
}