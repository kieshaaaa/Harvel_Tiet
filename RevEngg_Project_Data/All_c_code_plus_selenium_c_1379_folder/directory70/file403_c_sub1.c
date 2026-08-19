#include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    if ((num % 7 == 0) || (num % 3 == 0)) {
        printf("The number %d is divisible by either 7 or 3.\n", num);
    } else {
        printf("The number %d is not divisible by either 7 or 3.\n", num);
    }

    return 0;
}