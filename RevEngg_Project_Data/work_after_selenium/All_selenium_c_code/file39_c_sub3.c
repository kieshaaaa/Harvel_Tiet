#include<stdio.h>

int main() {
    int var1 = 100, var2 = 200;
    int temp;

    // Displaying original values
    printf("Original var1: %d, var2: %d\n", var1, var2);

    // Swapping the values
    temp = var1;
    var1 = var2;
    var2 = temp;

    // Displaying swapped values
    printf("Swapped var1: %d, var2: %d\n", var1, var2);

    return 0;
}