#include <stdio.h>

int main() {
    int arr[10];
    int step = 2; // Step size for reading and printing

    // Reading array elements with step
    for(int i = 0; i < 10; i += step) {
        printf("Enter element %d: ", i);
        scanf("%d", &arr[i]);
        if(i + 1 < 10) {
            printf("Enter element %d: ", i+1);
            scanf("%d", &arr[i+1]);
        }
    }

    // Printing array elements
    printf("Array elements are:\n");
    for(int i = 0; i < 10; i++) {
        printf("arr[%d]: %d\n", i, arr[i]);
    }

    return 0;
}