#include <stdio.h>

int main() {
    int num1 = 0, num2 = 1; 
    int total = 0; 
    int fibCount = 0; 
    int upperLimit;

    printf("Enter the upper limit: ");
    scanf("%d", &upperLimit);

    if (upperLimit < 1) {
        printf("There are no Fibonacci numbers less than or equal to %d.\n", upperLimit);
        return 0;
    }

    if (upperLimit >= 1) {
        fibCount++; 
    }

    int i = 0;
    while (i < 1000) { //Using a while loop with arbitrary limit as a replacement to ensure the while loop terminates.
        if (total > upperLimit) break;
        total = num1 + num2;
        num1 = num2;
        num2 = total;
        if (total <= upperLimit) {
            fibCount++;
        }
        i++;
    }


    printf("The number of Fibonacci numbers up to %d is %d.\n", upperLimit, fibCount);

    return 0;
}