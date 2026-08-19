#include <stdio.h>
#include "structure.h"

int main() {
    // Create an instance of the structure
    struct DataStructure data;

    // Call the function to allocate values to the structure members
    allocateValues(&data);

    // Print the values of the structure members
    printf("Integer: %d\n", data.integer);
    printf("Floating Point: %.2f\n", data.floatingPoint);
    printf("Double Precision: %.10lf\n", data.doublePrecision);
    printf("Character: %c\n", data.character);

    return 0;
}

