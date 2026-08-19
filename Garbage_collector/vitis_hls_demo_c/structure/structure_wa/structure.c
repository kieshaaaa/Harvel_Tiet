#include <stdio.h>
#include "structure.h"

// Structure definition
struct MixedDataStructure {
    int integer;
    float floatingPoint;
    double doublePrecision;
    char character;
    int array[MAX_SIZE];
};

// Function definition
int processStructure() {
    // Assign values to structure members
    struct MixedDataStructure data;
    data.integer = 42;
    data.floatingPoint = 3.14;
    data.doublePrecision = 3.14159265359;
    data.character = 'A';

    // Initialize the array
    for (int i = 0; i < MAX_SIZE; i++) {
        data.array[i] = i + 1;
    }

    printf("Integer: %d\n", data.integer);
    printf("Floating Point: %.2f\n", data.floatingPoint);
    printf("Double Precision: %.10lf\n", data.doublePrecision);
    printf("Character: %c\n", data.character);
    printf("Array: ");
    for (int j = 0; j < MAX_SIZE; j++) {
        printf("%d ", data.array[j]);
    }
    printf("\n");
    return data.integer;
}

