#include <stdio.h>

int main() {
    int number;
    printf("Enter a positive integer number: ");
    scanf("%d", &number);

    if (number % 2 == 0) {
        printf("%d is an EVEN number.\n", number);
    } else {
        printf("%d is an ODD number.\n", number);
    }

    return 0;
}