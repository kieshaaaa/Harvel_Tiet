#include <stdio.h>

int main() {
    int number;
    float result;
    printf("\nEnter An Integer => ");
    scanf("%d", &number);
    result = number / 10.0f; // Division with float
    printf("Without last Digit => ");
    printf("%d \n", (int)result); // Casting back to int

    return 0;
}