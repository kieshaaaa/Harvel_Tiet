// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[12],int arr2[10],int arr3[10]) {

    printf("Processing array: ");

    arr[0] = arr[1] + arr[2];
    arr[3] = arr[4] - arr[5];
    arr[6] = arr[7] * arr[8];
    arr[9] = arr[10] / arr[11];


    arr2[0] = arr2[1] * arr2[2] * arr2[3] + arr2[4] - arr2[5] / arr2[6] * arr[7] ;

}

