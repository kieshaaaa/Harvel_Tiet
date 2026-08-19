#include <stdio.h>
#include "array_woa.h"

void myFunction(ArrayElement arr[32],ArrayElement output[32]) {
    // Function logic

    for (int i = 0; i < 32; i++) {
	output[i].data = arr[i].data * 2;
        printf("Element %d: %u\n", i, arr[i].data);
    }
}

