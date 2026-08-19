#include <stdio.h>
#include <math.h>

int main() {
    int i, isPrime = 1;
    int num;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &num);
    
    if (num <= 1) isPrime = 0;
    i = 2;
    while (i <= sqrt(num)) {
        if (num % i == 0) {
            isPrime = 0;
            break;
        }
        i++;
    }

    if (isPrime == 1)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", num);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", num);
    
    return 0;
}