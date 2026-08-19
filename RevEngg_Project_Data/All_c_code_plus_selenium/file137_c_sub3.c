#include <stdio.h>

int main() {
    int value, processedValue;
    printf("Enter your value: ");
    scanf("%d", &value);
    processedValue = (value >> 4) & 1;
    printf("Processed result is: %d\n", processedValue);
    return 0;
}