#include <stdio.h>
#include <math.h>

int main() {
    int n;
    printf("\nEnter A Number to Find Next Prime Number => ");
    scanf("%d", &n);

    for (int num = n + 1; ; num++) {
        if (num == 2) {
            printf("\nNext Prime Number => %d\n", num);
            break;
        }
        if (num % 2 == 0) continue;

        int isPrime = 1;
        for (int i = 3; i <= (int)sqrt((float)num); i += 2) {
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