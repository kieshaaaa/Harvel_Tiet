#include <stdio.h>
#include <math.h>

int main() {
    int n, i, originalNum, remainder, numDigits, tempNum;
    int count = 0;
    float sum;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    printf("Armstrong numbers between 1 and %d are: ", n);

    for(i = 1; i <= n; i++) {
        sum = 0;
        originalNum = i;
        tempNum = originalNum;
        numDigits = 0;

        do {
            numDigits++;
            tempNum /= 10;
        } while(tempNum != 0);

        originalNum = i;
        while(originalNum > 0) {
            remainder = originalNum % 10;
            sum += pow(remainder, numDigits);
            originalNum /= 10;
        }

        if((int)sum == i) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal Armstrong numbers between 1 and %d: %d\n", n, count);

    return 0;
}