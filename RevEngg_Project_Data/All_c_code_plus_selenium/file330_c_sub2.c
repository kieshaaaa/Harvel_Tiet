#include <stdio.h>

int main() {
    int a, b, hcf, min;
    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("Enter second number :: ");
    scanf("%d", &b);

    min = (a < b) ? a : b;

    for(hcf = min; hcf >= 1; hcf--) {
        if(a % hcf == 0 && b % hcf == 0) {
            break;
        }
    }
    printf("HCF (Highest Common Factor) is: %d\n", hcf);
    return 0;
}