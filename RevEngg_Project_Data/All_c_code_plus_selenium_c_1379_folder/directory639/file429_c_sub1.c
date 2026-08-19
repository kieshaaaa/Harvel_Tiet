#include <stdio.h>

int main() {
    char a = 'B';
    int b = 345;
    float c = 456.78f;
    float d = 2345.67f; // Replacing double with float
    char str[] = "World";

    int size_a = sizeof(a);
    int size_b = sizeof(b);
    int size_c = sizeof(c);
    int size_d = sizeof(d);
    int size_str = sizeof(str);

    printf("\nSize of char a: %d", size_a);
    printf("\nSize of int b: %d", size_b);
    printf("\nSize of float c: %d", size_c);
    printf("\nSize of float d (replacing double): %d", size_d);
    printf("\nSize of char array str: %d", size_str);

    return 0;
}