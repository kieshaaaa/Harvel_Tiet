#include <stdio.h>

int main() {
    int size_char = sizeof(char);
    int size_int = sizeof(int);
    int size_float = sizeof(float);
    int size_long_int = sizeof(long int);

    printf("Size of char: %d\n", size_char);
    printf("Size of int: %d\n", size_int);
    printf("Size of float: %d\n", size_float);
    printf("Size of long int: %d\n", size_long_int);

    return 0;
}