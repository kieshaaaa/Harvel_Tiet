// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[6]) {

    printf("Processing array: ");
    arr[0] = arr[1] + arr[2] + arr[3] + arr[4] + arr[5];
}

