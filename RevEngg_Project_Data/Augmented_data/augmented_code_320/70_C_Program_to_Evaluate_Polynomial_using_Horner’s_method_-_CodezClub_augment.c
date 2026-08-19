/* Source: https://www.codezclub.com/c-find-value-polynomial-using-horners-method/ */
/*  C Program to Evaluate Polynomial using Horner’s method  */

#include <stdio.h>

int main()
{
     float coeff[100],sum=0,x;
     int degree,i;

     printf("\nEnter degree of the polynomial X :: ");
     scanf("%d",&degree);
     printf("\nEnter coefficient's of the polynomial X :: \n");
     i = degree;
     while(i>=0)
     {
            printf("\nEnter Coefficient of [ X^%d ] :: ",i);
            scanf("%f",&coeff[i]);
            i--;
     }

     printf("\nEnter the value of X :: ");
     scanf("%f",&x);

     i = degree;
     while(i>0)
     {
        sum=(sum+coeff[i])*x;
        i--;
     }

     sum=sum+coeff[0];

     printf("\nValue of the polynomial is = [ %f ]\n",sum);

     return 0;
}