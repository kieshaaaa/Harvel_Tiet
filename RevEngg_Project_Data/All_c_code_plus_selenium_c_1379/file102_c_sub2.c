#include <stdio.h>

int main() {
    int i, isPrime = 1;
    int n;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &n);

    if (n == 2) isPrime = 1;
    else if (n < 2 || n % 2 == 0) isPrime = 0;
    else {
        for (i = 3; i < n / 2; i += 2) {
            if (n % i == 0) {
                isPrime = 0;
                break;
            }
        }
    }

    if (isPrime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", n);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", n);
    
    return 0;
}