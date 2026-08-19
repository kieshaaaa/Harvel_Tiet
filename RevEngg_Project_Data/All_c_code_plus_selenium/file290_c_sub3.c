#include <stdio.h>

int main() {
    int x, y, addition;
    float average;

    printf("Enter first integer: ");
    scanf("%d", &x);
    printf("Enter second integer: ");
    scanf("%d", &y);

    addition = x + y;
    // Here, addition is directly used in calculating average to show different approach
    average = addition / 2.0f;

    printf("Sum = %d\n", addition);
    printf("Average = %f\n", average);

    return 0;
}