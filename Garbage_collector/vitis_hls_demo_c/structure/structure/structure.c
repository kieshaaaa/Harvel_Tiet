#include <stdio.h>
#include "structure.h"

struct AllDataTypes {
    int integer;
    float floatingPoint;
    double doublePrecision;
    char character;
};

// Function definition
int processStructure() {
    // Structure variable declaration
    struct AllDataTypes data;

    // Assign values to structure members
    data.integer = 42;
    data.floatingPoint = 3.14;
    data.doublePrecision = 3.14159265359;
    data.character = 'A';

    // Print the values of structure members
    printf("Integer: %d\n", data.integer);
    printf("Floating Point: %f\n", data.floatingPoint);
    printf("Double Precision: %lf\n", data.doublePrecision);
    printf("Character: %c\n", data.character);
    return data.integer;
}

