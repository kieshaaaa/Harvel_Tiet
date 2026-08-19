#include <stdio.h>

int main() {
    int num, sum = 0, i = 1;

    printf("Enter an integer number: ");
    scanf("%d", &num);

    do {
        if (num % i == 0) {
            sum += i;
        }
        i++;
    } while (i < num);

    if (sum == num) {
        printf("%d is a perfect number.\n", num);
    } else {
        printf("%d is not a perfect number.\n", num);
    }

    return 0;
}