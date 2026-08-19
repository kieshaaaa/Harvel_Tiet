#include <stdio.h>
#include <math.h>

int main() {
    int n, i, originalNum, remainder, numDigits;
    int count = 0;
    float sum;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    printf("Armstrong numbers between 1 and %d are: ", n);

    for(i = n; i >= 1; i--) {
        sum = 0;
        originalNum = i;
        numDigits = (int)log10(i) + 1;

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

    printf("\nCount of Armstrong numbers between 1 and %d: %d\n", n, count);

    return 0;
}