#include <stdio.h>

int main() {
    int values[3];
    values[0] = 100; // Assigning values directly
    values[1] = 200;
    values[2] = 300;

    // Printing initial values
    printf("\tValue of \ta: %d \tb: %d \tc: %d\n", values[0], values[1], values[2]);

    // Adding 10 to each value
    values[0] += 10;
    values[1] += 10;
    values[2] += 10;

    // Printing updated values
    printf("\n\tAfter adding 10\n\n");
    printf("\tValue of \ta: %d \tb: %d \tc: %d\n", values[0], values[1], values[2]);

    return 0;
}