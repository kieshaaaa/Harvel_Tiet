#include <stdio.h>
#include <math.h>

int main() {
    int num, originalNum, remainder, digits = 0;
    float armstrongSum = 0;
    
    printf("\nEnter a number to check if it is an Armstrong number: ");
    scanf("%d", &num);
    
    if(num < 0) {
        printf("Invalid input.");
        return 0;
    }
    
    originalNum = num;

    // Count the number of digits
    for (; originalNum != 0; ++digits) {
        originalNum /= 10;
    }

    originalNum = num;

    // Calculate the sum of the powers of its digits
    for (; originalNum != 0; originalNum /= 10) {
        remainder = originalNum % 10;
        armstrongSum += pow(remainder, digits);
    }

    if ((int)armstrongSum == num)
        printf("1 is An Armstrong Number");
    else
        printf("0 is Not An Armstrong Number");

    return 0;
}