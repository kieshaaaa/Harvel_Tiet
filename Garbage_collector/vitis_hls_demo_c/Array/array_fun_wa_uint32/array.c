// function.c

#include <stdio.h>
#include <stdint.h>
#include "array.h"

void processArray(uint32_t arr[]) {
    printf("Processing array: ");
    for (int i = 0; i < 5; i++) {
        arr[i] = arr[i] + 2;  // Multiply each element by 2
        printf("%d ", arr[i]);
    }
    printf("\n");
}

