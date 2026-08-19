/* Source: https://www.includehelp.com/c-programs/c-program-to-set-clear-bits-of-a-number.aspx */
/* C program to set and clear bits of a number.*/

#include <stdio.h>

int main()
{

    unsigned int num = 0x0C;

    /*set 0th and 1st bits*/
    num |= (1 << 0); /*set 0th bit*/
    num |= (1 << 1); /*set 1st bit*/

    printf("\nValue of num = %04X after setting 0th and 1st bits.", num);

    /*clear 0th and 1st bits*/
    num &= ~(1 << 0); /*set 0th bit*/
    num &= ~(1 << 1); /*set 1st bit*/

    printf("\nValue of num = %04X after clearing 0th and 1st bits.", num);

    return 0;
}
