#include <stdio.h>

int main() {
    int arr[10], i;
    printf("Enter 10 integers:\n");
    
    for (i = 0; i < 10; i++) {
        printf("Number %d: ", i);
        scanf("%d", &arr[i]);
        arr[i] = arr[i] % 2; // Immediate replacement upon input
    }
    
    printf("\nProcessed Array (Even as 0, Odd as 1):\n");
    for (i = 0; i < 10; i++) {
        printf("Index %d: %d\n", i, arr[i]);
    }
    
    return 0;
}