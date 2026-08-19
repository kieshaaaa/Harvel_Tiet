// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[6]) {

    printf("Processing array: ");
    arr[0] = arr[0] + 1;
    arr[1] = arr[1] + 2;
    arr[2] = arr[2] + 3;
    arr[3] = arr[3] + 4;
    arr[4] = arr[4] + 5;
    arr[5] = arr[5] + 6;
}

