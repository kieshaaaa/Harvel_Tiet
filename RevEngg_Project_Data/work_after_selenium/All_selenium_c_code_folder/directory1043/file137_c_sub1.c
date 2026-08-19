#include <stdio.h>

int main() {
    int num, shiftedValue;
    printf("Input a number: ");
    scanf("%d", &num);
    shiftedValue = num >> 2;
    printf("Shifted result: %d\n", shiftedValue);
    return 0;
}