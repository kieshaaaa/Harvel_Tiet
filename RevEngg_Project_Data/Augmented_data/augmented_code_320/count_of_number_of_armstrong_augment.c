#include <stdio.h>
#include <math.h>

int main() {
    int num, j, originalNum, rem, numDigits;
    int count = 0;
    double sum;

    printf("Enter a positive integer: ");
    scanf("%d", &num);

    printf("Armstrong numbers between 1 and %d are: ", num);

    j = 1;
    while (j <= num) {
        sum = 0;
        originalNum = j;

        // Find the number of digits in the number
        numDigits = (int)log10(j) + 1;

        // Calculate the sum of the digits raised to the power of numDigits
        while(originalNum > 0) {
            rem = originalNum % 10;
            sum += pow(rem, numDigits);
            originalNum /= 10;
        }

        // Check if the sum is equal to the original number
        if((int)sum == j) {
            printf("%d ", j);
            count++;
        }
        j++;
    }

    printf("\nTotal Armstrong numbers between 1 and %d: %d\n", num, count);

    return 0;
}