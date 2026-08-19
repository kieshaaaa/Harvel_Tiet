#include<stdio.h>

int main() {
    int a, b, c, largest, smallest, mid;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);
    printf("Enter third number: ");
    scanf("%d", &c);

    mid = a;
    if(b > mid) mid = b;
    if(c > mid) largest = c;
    else largest = mid;

    mid = a;
    if(b < mid) mid = b;
    if(c < mid) smallest = c;
    else smallest = mid;

    printf("The largest number is: %d\n", largest);
    printf("The smallest number is: %d\n", smallest);

    return 0;
}