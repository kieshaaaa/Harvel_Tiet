#include <stdio.h>

int main() {
    int num, i;
    printf("Enter a number to find its prime factors: ");
    scanf("%d", &num);

    printf("Prime Factors: ");

    // Removing all the 2s from num
    while (num % 2 == 0) {
        printf("%d ", 2);
        num = num / 2;
    }

    // At this point, num is odd. We can skip one element (Note i = i +2)
    for (i = 3; i * i <= num; i += 2) {
        // While i divides num, print i and divide num
        while (num % i == 0) {
            printf("%d ", i);
            num = num / i;
        }
    }

    // This condition is to handle the case when num is a prime number
    // greater than 2
    if (num > 2)
        printf("%d ", num);

    return 0;
}