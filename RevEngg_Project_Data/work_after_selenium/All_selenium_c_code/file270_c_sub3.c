#include <stdio.h>

int main() {
    char multiple[] = "CodezClub";
    unsigned baseAddress = (unsigned)&multiple[0]; // Get the base address as an unsigned int

    for (int i = 0; i < 10; i++) { // Loop over the array length
        printf("The address of array element %d: %u\n", i, baseAddress + i);
    }

    return 0;
}