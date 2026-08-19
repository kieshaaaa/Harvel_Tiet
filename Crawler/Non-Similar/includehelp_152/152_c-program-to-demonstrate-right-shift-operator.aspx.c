/* Source: https://www.includehelp.com/c-programs/c-program-to-demonstrate-right-shift-operator.aspx */
/* C Program to demonstrate example right shift (>>) operator.*/

#include <stdio.h>

int main()
{

    unsigned int num = 0xff;

    printf("\nValue of num = %04X before right shift.", num);

    /*shifting 2 bytes right*/
    num = (num >> 2);
    printf("\nValue of num = %04X after right shift.", num);

    return 0;
}
