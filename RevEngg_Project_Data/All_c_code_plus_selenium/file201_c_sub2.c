#include <stdio.h>

int main()
{
    int x, y;
    int result = 0;

    printf("Enter first number: ");
    scanf("%d", &x);
    printf("Enter second number: ");
    scanf("%d", &y);

    for (; y > 0; y--) {
        result += x;
    }

    printf("Multiplication of ");
    printf("%d", x);
    printf(" and ");
    printf("%d", y);
    printf(" is: ");
    printf("%d\n", result);

    return 0;
}