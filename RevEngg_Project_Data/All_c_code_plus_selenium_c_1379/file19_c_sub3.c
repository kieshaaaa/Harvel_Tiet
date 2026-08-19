#include<stdio.h>

int main() {
    int sourceArray[10] = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50};
    int destinationArray[10];
    int k;

    printf("\nCopying elements in reverse order...\n\n");
    
    for (k = 9; k >= 0; k--) {
        destinationArray[9 - k] = sourceArray[k]; // Copy in reverse order
    }

    for (k = 0; k < 10; k++) {
        printf("Element at index %d in destination array: %d\n", k, destinationArray[k]);
    }

    return 0;
}