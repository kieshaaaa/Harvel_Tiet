#include <stdio.h>

int main() {
    int i, j;
    float k, l;

    // Using comma operator for multiple assignments
    i = 10, j = 20, k = 30.5, l = 40.5;

    printf("i = %d\n", i);
    printf("j = %d\n", j);
    printf("k = %f\n", k);
    printf("l = %f\n", l);

    return 0;
}