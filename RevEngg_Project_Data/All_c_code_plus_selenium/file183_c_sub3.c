#include <stdio.h>

int main() {
    int a, b, c;
    int largest;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);
    printf("Enter third number: ");
    scanf("%d", &c);

    largest = a;

    if(b > largest) {
        largest = b;
    }

    if(c > largest) {
        largest = c;
    }

    printf("Largest number is: %d\n", largest);

    return 0;
}