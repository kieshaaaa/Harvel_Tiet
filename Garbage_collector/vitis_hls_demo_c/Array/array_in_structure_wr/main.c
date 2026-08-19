#include <stdio.h>
#include "array.h"

int main() {
    ArrayElement arr[32];

    // Assign values to the array elements
    for (int i = 0; i < 32; i++) {
        arr[i].data = i; // Set each element to 1
    }

    // Call the function
    int out = myFunction(arr);

    return 0;
}

