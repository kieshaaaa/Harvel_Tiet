// main.c

#include <stdio.h>
#include "array.h"


int main() {
    int myArray[6] = {1,2,3,4,5,6};
    int myArray2[3] = {9,8,7};
    printf("Original array: ");
    for (int i = 0; i < 6; i++) {
        printf("%d ", myArray[i]);
    }
    printf("\n");

   printf("Original array2: ");
    for (int k = 0; k < 3; k++) {
        printf("%d ", myArray2[k]);
    }
    printf("\n");


    processArray(myArray,myArray2);  // Call the function from the other file

    printf("Modified array: ");
    for (int j = 0; j < 6; j++) {
        printf("%d ", myArray[j]);
    }
    
    printf("Modified array2: ");
    for (int l = 0; l < 3; l++) {
        printf("%d ", myArray2[l]);
    }

    printf("\n");

    return 0;
}

