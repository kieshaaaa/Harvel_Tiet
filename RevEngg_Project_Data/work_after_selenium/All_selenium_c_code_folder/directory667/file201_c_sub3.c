#include <stdio.h>

int main()
{
    int numA, numB;
    int sum = 0;

    printf("Enter first number: ");
    scanf("%d", &numA);
    printf("Enter second number: ");
    scanf("%d", &numB);

    while (numB > 0) {
        if (numB % 2 == 0) {
            numA = numA * 2;
            numB = numB / 2;
        } else {
            sum += numA;
            numB--;
        }
    }

    printf("Multiplication of ");
    printf("%d", numA);
    printf(" and ");
    printf("%d", numB);
    printf(" is: ");
    printf("%d\n", sum);

    return 0;
}