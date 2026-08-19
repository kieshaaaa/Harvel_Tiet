#include <stdio.h>

int main() {
    char x = 'C';
    int y = 678;
    float z = 789.01f;
    float q = 4567.89f; // Replacing double with float
    char greeting[] = "Hello, C!";

    int size_x = sizeof(x);
    int size_y = sizeof(y);
    int size_z = sizeof(z);
    int size_q = sizeof(q);
    int size_greeting = sizeof(greeting);

    printf("\nSizes -> char: %d, int: %d, float: %d, float (replacing double): %d, char array: %d", size_x, size_y, size_z, size_q, size_greeting);

    return 0;
}