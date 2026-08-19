#include <stdio.h>

int main() {
    int a, b;
    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("Enter second number :: ");
    scanf("%d", &b);

    while(a != b) {
        if(a > b) {
            a = a - b;
        } else {
            b = b - a;
        }
    }
    printf("HCF (Highest Common Factor) is: %d\n", a);
    return 0;
}