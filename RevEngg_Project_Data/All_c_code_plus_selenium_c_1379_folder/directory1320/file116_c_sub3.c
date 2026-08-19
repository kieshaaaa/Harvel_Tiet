#include <stdio.h>

int main() {
    int num;
    float tempResult;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);
    tempResult = num / 10.0f; // Division with float
    printf("Without last Digit => ");
    printf("%d \n", (int)tempResult); // Casting back to int

    return 0;
}