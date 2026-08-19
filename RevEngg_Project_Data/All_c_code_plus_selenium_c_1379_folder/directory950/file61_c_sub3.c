#include <stdio.h>

int main() {
    int a, b, c;
    int largest;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter Second number :: ");
    scanf("%d", &b);
    printf("\nEnter third number :: ");
    scanf("%d", &c);

    largest = a;

    if (b > largest) {
        largest = b;
    }
    
    if (c > largest) {
        largest = c;
    }

    printf("\nLargest number is = %d \n", largest);

    return 0;
}