/* Source: https://www.includehelp.com/c-programs/c-program-to-count-digits-in-a-number.aspx */
/* C program to count digits in a number.*/

#include <stdio.h>

int main()
{
    int num, tNum, cnt;

    printf("Enter a number: ");
    scanf("%d", &num);

    cnt = 0;
    tNum = num;

    while (tNum > 0) {
        cnt++;
        tNum /= 10;
    }

    printf("Total numbers of digits are: %d in number: %d.", cnt, num);

    return 0;
}
