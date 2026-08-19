/* Source: https://www.includehelp.com/c-programs/c-program-to-check-number-is-palindrome-or-not.aspx */
/* C program to check whether a number is palindrome or not */

#include <stdio.h>

int main()
{
    int num, reversedNum = 0, remainder = 0, temp;

    printf("Enter an integer number: ");
    scanf("%d", &num);

    temp = num;

    for (; temp != 0; temp /= 10) {
        remainder = temp % 10;
        reversedNum = reversedNum * 10 + remainder;
    }

    /* checking if number is equal to reverse number */
    if (reversedNum == num)
        printf("%d is a palindrome.", num);
    else
        printf("%d is not a palindrome.", num);

    return 0;
}