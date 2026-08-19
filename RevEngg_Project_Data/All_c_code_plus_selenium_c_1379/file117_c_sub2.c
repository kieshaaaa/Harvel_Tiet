#include <stdio.h>

int main() {
    int num, shifted;

    printf("Input an integer: ");
    scanf("%d", &num);

    shifted = num >> 2; // Right shift by 2 bits

    printf("After shifting: ");
    printf("%d", shifted);
    printf(" \n");

    return 0;
}