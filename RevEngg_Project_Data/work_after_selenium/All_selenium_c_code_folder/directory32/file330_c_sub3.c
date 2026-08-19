#include <stdio.h>

int main() {
    int a, b, temp;
    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("Enter second number :: ");
    scanf("%d", &b);

    while(b != 0) {
        temp = a;
        a = b;
        b = temp % b;
    }
    printf("HCF (Highest Common Factor) is: %d\n", a);
    return 0;
}