#include <stdio.h>

int main() {
    int num, factor = 2;
    printf("Enter a number to print all prime factors: ");
    scanf("%d", &num);

    printf("Prime Factors: ");

    while (num != 1) {
        while (num % factor == 0) {
            printf("%d ", factor);
            num /= factor;
        }
        factor++;
    }
    return 0;
}