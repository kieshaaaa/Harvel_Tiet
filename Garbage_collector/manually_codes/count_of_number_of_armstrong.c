#include <stdio.h>
#include <math.h>

int main() {
    int n, i, originalNum, remainder, numDigits;
    int count = 0;
    double sum;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    printf("Armstrong numbers between 1 and %d are: ", n);

    for(i = 1; i <= n; i++) {
        sum = 0;
        originalNum = i;

        // Find the number of digits in the number
        numDigits = (int)log10(i) + 1;

        // Calculate the sum of the digits raised to the power of numDigits
        while(originalNum > 0) {
            remainder = originalNum % 10;
            sum += pow(remainder, numDigits);
            originalNum /= 10;
        }

        // Check if the sum is equal to the original number
        if((int)sum == i) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal Armstrong numbers between 1 and %d: %d\n", n, count);

    return 0;
}
