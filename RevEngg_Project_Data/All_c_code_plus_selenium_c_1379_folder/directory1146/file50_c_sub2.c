#include <stdio.h>

int main() {
    int a, b, c, d, sum;
    printf("\nEnter the first number: ");
    scanf("%d", &a);
    printf("Enter the second number: ");
    scanf("%d", &b);
    printf("Enter the third number: ");
    scanf("%d", &c);
    printf("Enter the fourth number: ");
    scanf("%d", &d);

    sum = a + b + c + d;
    printf("\nSum of 4 numbers is %d\n", sum);
    return 0;
}