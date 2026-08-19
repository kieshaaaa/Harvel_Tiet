/* Source: https://www.codezclub.com/write-a-c-program-to-check-prime-or-not/ */
/* C program to Check whether the Given Number is Prime or not  */

#include <stdio.h>

int main()
{
    int tally;
    int number;
    unsigned char flag=0;

    printf("\nEnter any integer number :: ");
    scanf("%d",&number);

    for(tally=2; tally<(number/2); tally++)
    {
        if(number%tally ==0)
        {
            flag=1;
            break;
        }
    }

    if(flag==0)
        printf("\nThe Entered Number [ %d ] is a Prime Number.\n",number);
    else
        printf("\nThe Entered Number [ %d ] is not a Prime Number.\n",number);

    return 0;
}