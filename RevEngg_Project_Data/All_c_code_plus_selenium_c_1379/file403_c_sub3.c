#include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (num % 7 == 0) {
        printf("The number %d is divisible by 7.\n", num);
        if (num % 3 == 0) {
            printf("Additionally, it is also divisible by 3.\n");
        }
    } else if (num % 3 == 0) {
        printf("The number %d is divisible by 3.\n", num);
    } else {
        printf("The number %d is neither divisible by 7 nor by 3.\n", num);
    }

    return 0;
}