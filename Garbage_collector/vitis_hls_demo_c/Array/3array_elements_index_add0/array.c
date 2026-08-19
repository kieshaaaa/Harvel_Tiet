// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[5],int arr2[5],int arr3[5]) {

    printf("Processing array: ");
    arr[0] = arr[1] + arr[2] + arr[3] + arr[4] + arr2[0] + arr2[1] + arr2[2] + arr2[3] + arr2[4] + arr3[0] + arr3[1] + arr3[2] + arr3[3] +arr3[4];  
}

