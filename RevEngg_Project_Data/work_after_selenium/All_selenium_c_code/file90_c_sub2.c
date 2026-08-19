#include <stdio.h>

int main() {
    int a, b;
    printf("\nEnter value of a => ");
    scanf("%d", &a);
    printf("\nEnter value of b => ");
    scanf("%d", &b);

    // Using Multiplication and Division
    a = a * b;
    b = a / b;
    a = a / b;

    printf("a => %d, b => %d\n", a, b);

    return 0;
}