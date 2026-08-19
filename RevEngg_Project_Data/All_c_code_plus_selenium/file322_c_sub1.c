#include <stdio.h>

int main() {
    int num1, num2, min, hcf = 1;

    printf("Enter first number :: ");
    scanf("%d", &num1);
    printf("\nEnter second number :: ");
    scanf("%d", &num2);

    min = (num1 < num2) ? num1 : num2;

    for (int i = 2; i <= min; i++) {
        if (num1 % i == 0 && num2 % i == 0) {
            hcf = i;
        }
    }

    printf("\nHCF (Highest Common Factor) of %d,%d is: %d\n", num1, num2, hcf);

    return 0;
}