#include <stdio.h>

int main() {
    int x = 100; // Starting with the first value

    // Assigning and printing each variable's value separately
    printf("\tValue of \ta: %d\n", x);
    x = 200; // Updating for the next value
    printf("\tValue of \tb: %d\n", x);
    x = 300; // Finally, updating to the last value
    printf("\tValue of \tc: %d\n", x);

    // Resetting x for addition operation
    x = 100 + 10; // Adding 10 to the initial value
    printf("\n\tAfter adding 10\n\n");
    printf("\tValue of \ta: %d\n", x);
    x = 200 + 10; // Repeating addition for the second value
    printf("\tValue of \tb: %d\n", x);
    x = 300 + 10; // Repeating addition for the third value
    printf("\tValue of \tc: %d\n", x);

    return 0;
}