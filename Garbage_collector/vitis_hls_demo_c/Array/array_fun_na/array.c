// my_function.c

#include <stdio.h>
#include "array.h"

void myFunction() {
    // Access and modify the global array
    for (int i = 0; i < 5; i++) {
        myArray[i] = i + 1;
    }

    // Print the values of the global array
    printf("Array values: ");
    for (int j = 0; j < 5; j++) {
        printf("%d ", myArray[j]);
    }
    printf("\n");
}

