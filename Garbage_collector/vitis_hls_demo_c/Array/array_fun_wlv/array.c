// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[],int output[]) {

    printf("Processing array: ");
    for (int i = 0; i < 5; i++) {
        arr[i] = arr[i] * 2;  // Multiply each element by 2
        printf("%d ", arr[i]);
    }
    printf("\n");
    printf("output array: ");
    for (int j=0; j < 5; j++) {
    	output[j] = arr[j] + 3;
    	printf("%d ",output[j]);
    }
    printf("\n");
}

