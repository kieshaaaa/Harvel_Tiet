#include<stdio.h>

int main() {
    int original[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
    int copied[10];
    int j; // Using 'j' instead of 'i'

    printf("\nCopying elements...\n\n");
    
    for (j = 0; j < 10; j++) {
        copied[j] = original[j];
    }

    printf("Arrays have been copied.\n");

    for (j = 0; j < 10; j++) {
        printf("Copied array element %d: %d\n", j + 1, copied[j]);
    }

    return 0;
}