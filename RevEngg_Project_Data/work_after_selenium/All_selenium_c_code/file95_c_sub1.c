#include<stdio.h>

int main() {
    int a, b, c, largest, smallest;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);
    printf("Enter third number: ");
    scanf("%d", &c);

    largest = (a > b) ? (a > c ? a : c) : (b > c ? b : c);
    smallest = (a < b) ? (a < c ? a : c) : (b < c ? b : c);

    printf("The largest number is: %d\n", largest);
    printf("The smallest number is: %d\n", smallest);

    return 0;
}