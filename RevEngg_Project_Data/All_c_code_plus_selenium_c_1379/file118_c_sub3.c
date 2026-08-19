#include <stdio.h>

int main() {
    int a, shift;
    printf("Enter an integer (a): ");
    scanf("%d", &a);
    printf("Enter the number of positions to left shift (shift): ");
    scanf("%d", &shift);
    int result = a << shift;
    printf("The result is %d\n", result);
    return 0;
}