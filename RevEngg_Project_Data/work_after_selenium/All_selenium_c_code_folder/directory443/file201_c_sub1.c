#include <stdio.h>

int main()
{
    int num1, num2;
    int product = 0;
    int count = 0;

    printf("Enter first number: ");
    scanf("%d", &num1);
    printf("Enter second number: ");
    scanf("%d", &num2);

    while (count < num2) {
        product += num1;
        count++;
    }

    printf("Multiplication of ");
    printf("%d", num1);
    printf(" and ");
    printf("%d", num2);
    printf(" is: ");
    printf("%d\n", product);

    return 0;
}