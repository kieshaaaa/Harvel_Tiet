#include <stdio.h>
#include <math.h>

int main() {
    int n;
    printf("\nEnter A Number to Find Next Prime Number => ");
    scanf("%d", &n);

    for (int num = n + 1; ; num++) {
        int isPrime = 1;
        for (int i = 2; i <= (int)sqrt((float)num); i++) {
            if (num % i == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime) {
            printf("\nNext Prime Number => %d\n", num);
            break;
        }
    }
    return 0;
}