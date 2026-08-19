// // C program to to check whether a given number is an Armstrong number or not

// // Header Files
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

// // Main Function Start
int main()
{
    int number;
    int armstrongFlag;
    printf("\nEnter A Number to Check Whether It is Armstrong or Not => ");
    scanf("%d", &number);

    // // Handling Invalid Input
    if (number < 0)
    {
        printf("!!! Invalid Input .....");
        exit(0);
    }

    int tempNumber = number, digitCount = 0;
    float sum = 0;

    // // count digits in number
    for(; tempNumber; tempNumber /= 10)
    {
        digitCount++;
    }

    tempNumber = number;
    for(; tempNumber; tempNumber /= 10)
    {
        sum += pow(tempNumber % 10, digitCount);
    }

    if (sum == number)
    {
        armstrongFlag = 1;
        printf("\n%d is An Armstrong Number", armstrongFlag);
    }
    else
    {
        armstrongFlag = 0;
        printf("\n%d is Not An Armstrong Number", armstrongFlag);
    }

    return 0;
}
// // Main Function End