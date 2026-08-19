#include <stdio.h>

int main() {
    int j, isPrime = 1;
    int num;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &num);

    if (num == 2) isPrime = 1;
    else if (num < 2 || num % 2 == 0) isPrime = 0;
    else {
        j = 3;
        while (j < num / 2) {
            if (num % j == 0) {
                isPrime = 0;
                break;
            }
            j += 2;
        }
    }

    if (isPrime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", num);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", num);
    
    return 0;
}