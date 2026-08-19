#include <stdio.h>

int main() {
    int a, b, result;
    printf("Enter the first integer (a): ");
    scanf("%d", &a);
    printf("Enter the second integer (b): ");
    scanf("%d", &b);

    result = a ^ b;

    printf("The result is %d \n", result);

    return 0;
}