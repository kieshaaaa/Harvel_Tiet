#include <stdio.h>

int main() {
    int base_size = 1; // Assuming size of char is 1 byte
    int size_char = base_size;
    int size_int = sizeof(int) / size_char;
    int size_float = sizeof(float) / size_char;
    int size_long_int = sizeof(long int) / size_char;

    printf("Size of char in char: %d\n", size_char);
    printf("Size of int in char: %d\n", size_int);
    printf("Size of float in char: %d\n", size_float);
    printf("Size of long int in char: %d\n", size_long_int);

    return 0;
}