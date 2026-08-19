#include <stdio.h>
#include <math.h>

int main() {
    int num, originalNum, digits = 0, remainder;
    float armstrongSum = 0;

    printf("\nEnter a number to check if it is an Armstrong number: ");
    scanf("%d", &num);

    if(num < 0) {
        printf("Invalid input.");
        return 0;
    }

    for (originalNum = num; originalNum != 0; originalNum /= 10, ++digits);

    originalNum = num;

    while (originalNum != 0) {
        remainder = originalNum % 10;
        armstrongSum += pow(remainder, digits);
        originalNum /= 10;
    }

    if ((int)armstrongSum == num)
        printf("1 is An Armstrong Number");
    else
        printf("0 is Not An Armstrong Number");

    return 0;
}