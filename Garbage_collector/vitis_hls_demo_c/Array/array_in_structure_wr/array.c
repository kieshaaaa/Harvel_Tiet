#include <stdio.h>
#include "array.h"

int myFunction(ArrayElement arr[32]) {
    // Function logic
    ArrayElement output[32];
    for (int i = 0; i < 32; i++) {
	output[i].data = arr[i].data;
        printf("Element %d: %u\n", i, arr[i].data);
    }
    return output[3].data;  //undefine value in the waveform 
}

