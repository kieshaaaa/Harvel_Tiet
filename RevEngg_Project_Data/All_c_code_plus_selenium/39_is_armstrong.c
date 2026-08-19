// // C program to to check whether a given number is an Armstrong number or not

// // Header Files
#include <stdio.h>

#include <math.h>
#include <stdlib.h>

// // Main Function Start
int main()
{

    int num;
    int result;
    printf("\nEnter A Number to Check Whether It is Armstrong or Not => ");
    scanf("%d", &num);

    // // Handling Invalid Input
    if (num < 0)
    {
        printf("!!! Invalid Input .....");
        exit(0);
    }

    int copyNum = num, numOfDigits = 0;
    float sum = 0;

    // // count digits in number
    while (copyNum)
    {
        numOfDigits++;
        copyNum /= 10;
    }

    copyNum = num;
    while (copyNum)
    {
        sum += pow(copyNum % 10, numOfDigits);
        copyNum /= 10;
    }

    if (sum == num)
{
result = 1;
        printf("\n%d is An Armstrong Number", result);
}    
else
{
result = 0;
        printf("\n%d is Not An Armstrong Number", result);
}

    return 0;
}
// // Main Function End
