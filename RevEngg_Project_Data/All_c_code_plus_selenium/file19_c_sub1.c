#include<stdio.h>

int main() {
    int originalArray[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int copyArray[10];
    int i;

    printf("\nCopy the elements of one array into another array\n\n");
    
    for (i = 0; i < 10; i++) {
        copyArray[i] = originalArray[i];
        printf("Original: %d, Copied: %d\n", originalArray[i], copyArray[i]);
    }

    return 0;
}