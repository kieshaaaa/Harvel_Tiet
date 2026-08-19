/* Source: https://www.codezclub.com/c-find-gross-and-net-salary/ */
/*  C Program to find the gross salary and net salary  */

#include<stdio.h>
int main()
{
    float basic, da, hra, tax, pf, gross, net;
    char name[50];

    printf("ENTER YOUR NAME :: ");
    scanf("%s", &name);
    printf("\nENTER THE BASIC SALARY :: ");
    scanf("%f", &basic);
    pf = 0.08 * basic;
    if (basic < 5000)
    {
    da = 0.3 * basic;
    hra = 0.08 * basic;
    }
    else if ((basic >= 5000) && (basic < 10000))
    {
    da = 0.4 * basic;
    hra = 0.1 * basic;
    }
    else
    {
    da = 0.5 * basic;
    hra = 0.2 * basic;
    }
    gross = basic + da + hra;
    net = gross - tax + pf;
    printf("\n\nTHE GROSS SALARY IS :: %f", gross);
    printf("\n\nTHE NET SALARY IS :: %f", net);

    return 0;

}