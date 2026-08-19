#include <stdio.h>
#include "array_woa.h"

int main() {
    ArrayElement arr[32];
    ArrayElement output[32];

    // Assign values to the array elements
    for (int i = 0; i < 32; i++) {
        arr[i].data = i; // Set each element to 1
    }

    // Call the function
    myFunction(arr,output);

    return 0;
}

