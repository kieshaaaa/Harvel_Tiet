#include <stdio.h>

int main() {
    int upperLimit, num, divisor, total;
    int perfectNumCount = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &upperLimit);

    printf("Perfect numbers between 1 and %d are: ", upperLimit);

    num = 1;
    while (num <= upperLimit) {
        total = 0;
        divisor = 1;
        while (divisor <= num / 2) {
            if (num % divisor == 0) {
                total += divisor;
            }
            divisor++;
        }

        if (total == num) {
            printf("%d ", num);
            perfectNumCount++;
        }
        num++;
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", upperLimit, perfectNumCount);

    return 0;
}