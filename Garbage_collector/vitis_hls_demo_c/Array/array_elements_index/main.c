// main.c

#include <stdio.h>
#include "array.h"


int main() {
    int myArray[6] = {1,2,3,4,5,6};
    printf("Original array: ");
    for (int i = 0; i < 6; i++) {
        printf("%d ", myArray[i]);
    }
    printf("\n");

    processArray(myArray);  // Call the function from the other file

    printf("Modified array: ");
    for (int j = 0; j < 6; j++) {
        printf("%d ", myArray[j]);
    }
    printf("\n");

    return 0;
}

