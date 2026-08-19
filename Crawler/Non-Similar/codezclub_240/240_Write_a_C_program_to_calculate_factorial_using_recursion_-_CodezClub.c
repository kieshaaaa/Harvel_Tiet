/* Source: https://www.codezclub.com/c-program-calculate-factorial-using-recursion/ */
/* C program to calculate factorial using recursion */

#include<stdio.h>

long int fact(int n);

int main( )
{
        int num;
        printf("Enter any number :: ");
        scanf("%d", &num);

        printf("\nUsing Recursion ---> \n");
        if(num<0)
                printf("\nError! No factorial for negative number...\n");
        else
                printf("\nFactorial of [ %d! ] is :: %ld\n", num, fact(num) );

                return 0;
}/*End of main()*/

/*Recursive*/
long int fact(int n)
{
        if(n == 0)
                return(1);

        return(n * fact(n-1));
}/*End of fact()*/