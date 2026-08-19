/* Source: https://www.includehelp.com/c-programs/find-the-position-of-msb-bit-of-an-unsigned-integer-number.aspx */
// C program to find the position of MSB bit of
// an unsigned integer number

#include <stdio.h>

int GetMsbPos(unsigned int num)
{
    int cnt = 0;

    while (num) {
        cnt++;
        num = num >> 1;
    }

    return cnt - 1;
}

int main()
{
    unsigned int num = 0;
    int pos = 0;

    printf("Enter Number: ");
    scanf("%d", &num);

    pos = GetMsbPos(num);
    printf("Position of MSB bit is: %d\n", pos);

    return 0;
}
