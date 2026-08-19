#include <stdio.h>

int main() {
    int number;
    printf("Enter a positive integer number: ");
    scanf("%d", &number);

    int remainder = number % 2;
    printf("%d is an ", number);
    remainder == 0 ? printf("EVEN") : printf("ODD");
    printf(" number.\n");

    return 0;
}