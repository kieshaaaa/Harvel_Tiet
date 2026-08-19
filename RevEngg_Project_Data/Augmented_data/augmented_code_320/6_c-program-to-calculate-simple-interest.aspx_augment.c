/* Source: https://www.includehelp.com/c-programs/c-program-to-calculate-simple-interest.aspx */
/* c program to calculate simple interest*/
#include <stdio.h>
 
int main()
{
    float principal, interestRate, years, simpleInterest;
 
    printf("Enter principal (Amount) :");
    scanf("%f",&principal);
 
    printf("Enter rate :");
    scanf("%f",&interestRate);
 
    printf("Enter time (in years) :");
    scanf("%f",&years);
 
    simpleInterest=(principal*interestRate*years)/100;
 
    printf("\nSimple Interest is = %f",simpleInterest);
 
    return 0;
}