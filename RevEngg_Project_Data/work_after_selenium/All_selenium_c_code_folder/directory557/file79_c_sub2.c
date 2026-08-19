#include <stdio.h>

int main() {
    int size_char_array = sizeof(char[10]);
    int size_int_array = sizeof(int[10]);
    int size_float_array = sizeof(float[10]);
    int size_long_int_array = sizeof(long int[10]);

    printf("Size of 10 char array: %d\n", size_char_array);
    printf("Size of 10 int array: %d\n", size_int_array);
    printf("Size of 10 float array: %d\n", size_float_array);
    printf("Size of 10 long int array: %d\n", size_long_int_array);

    return 0;
}