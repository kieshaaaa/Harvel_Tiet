#include <stdio.h>

int main() {
    char multiple[] = "CodezClub";
    unsigned baseAddress = (unsigned)multiple;

    for (int i = 0; i < 10; i++) { // Assuming we know the array length.
        printf("The address of array element %d: %u\n", i, baseAddress + i * sizeof(char));
    }

    return 0;
}