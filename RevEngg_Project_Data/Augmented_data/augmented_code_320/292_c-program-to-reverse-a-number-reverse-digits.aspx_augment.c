/* Source: https://www.includehelp.com/c-programs/c-program-to-reverse-a-number-reverse-digits.aspx */
/* program to reverse an integer number.*/

#include <stdio.h>

int main()
{
    int num;
    int digit, reversedNum;

    printf("Enter an integer number : ");
    scanf("%d", &num);

    /*Reversing Number*/
    reversedNum = 0;

    for(; num > 0; num /= 10) {
        digit = num % 10; /*get digit*/
        reversedNum = (reversedNum * 10) + digit;
    }

    printf("Reverse Number is : %d\n", reversedNum);
    return 0;
}