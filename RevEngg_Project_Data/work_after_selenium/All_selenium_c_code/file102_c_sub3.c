#include <stdio.h>

int main() {
    int i, prime = 1;
    int n, limit;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &n);

    if (n <= 1) prime = 0;
    limit = n / 2; // Avoiding sqrt(n) computation explicitly and not including math.h
    
    for (i = 2; i <= limit; i++) {
        if (n % i == 0) {
            prime = 0;
            break;
        }
    }

    if (prime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", n);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", n);

    return 0;
}