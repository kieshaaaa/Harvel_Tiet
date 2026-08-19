#include <stdio.h>

int main() {
    int a, b, hcf;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    for (hcf = (a < b) ? a : b; hcf > 0; hcf--) {
        if (a % hcf == 0 && b % hcf == 0)
            break;
    }

    printf("\nHCF (Highest Common Factor) of %d,%d is: %d\n", a, b, hcf);

    return 0;
}