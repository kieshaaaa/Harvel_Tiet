#include <stdio.h>

int main() {
    int num, isPrime = 1;
    int i, upperLimit;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &num);

    if (num <= 1) isPrime = 0;
    upperLimit = num / 2; 

    i = 2;
    while (i <= upperLimit) {
        if (num % i == 0) {
            isPrime = 0;
            break;
        }
        i++;
    }

    if (isPrime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", num);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", num);

    return 0;
}