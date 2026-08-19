#include <stdio.h>

int main() {
    int num1, num2;

    printf("Enter first number :: ");
    scanf("%d", &num1);
    printf("\nEnter second number :: ");
    scanf("%d", &num2);

    while (num1 != num2) {
        if (num1 > num2)
            num1 -= num2;
        else
            num2 -= num1;
    }

    printf("\nHCF (Highest Common Factor) of %d,%d is: %d\n", num1 + num2 - num1, num1 + num2 - num2, num1); // Avoiding expressions in printf

    return 0;
}