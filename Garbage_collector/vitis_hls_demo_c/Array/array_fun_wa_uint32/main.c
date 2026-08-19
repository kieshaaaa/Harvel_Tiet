// main.c

#include <stdio.h>
#include <stdint.h>
#include "array.h" 

int main() {
    uint32_t myArray[5] = {1,2,3,4,5};
    printf("Original array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", myArray[i]);
    }
    printf("\n");

    processArray(myArray);  // Call the function from the other file

    printf("Modified array: ");
    for (int j = 0; j < 5; j++) {
        printf("%d ", myArray[j]);
    }
    printf("\n");

    return 0;
}

