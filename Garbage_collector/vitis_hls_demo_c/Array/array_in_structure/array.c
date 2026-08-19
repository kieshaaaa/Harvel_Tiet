#include <stdio.h>
#include "array.h"

void myFunction(ArrayElement arr[]) {
    // Function logic
    ArrayElement output[32];
    for (int i = 0; i < 32; i++) {
	output[i].data = arr[i].data;
        printf("Element %d: %u\n", i, arr[i].data);
    }
}

