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

        while(tempNum != 0) {
            tempNum /= 10;
            numDigits++;
        }

        tempNum = originalNum;
        while(tempNum != 0) {
            remainder = tempNum % 10;
            sum += pow(remainder, numDigits);
            tempNum /= 10;
        }

        if((int)sum == i) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal Armstrong numbers between 1 and %d: %d\n", n, count);

    return 0;
}