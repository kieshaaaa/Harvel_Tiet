#include <stdio.h>

int main() {
    int num;
    printf("Enter a number to print all prime factors of it: ");
    scanf("%d", &num);

    printf("Prime Factors of %d: ", num);

    for (int i = 2; num > 1; i++) {
        while (num % i == 0) {
            printf("%d ", i);
            num = num / i;
        }
    }
    return 0;
}