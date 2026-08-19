/* Source: https://www.codezclub.com/c-evaluate-exponential-series/ */
/*  C Program to Evaluate Exponential Series using Function  */

#include<stdio.h>
#include<math.h>

int factorial(int n)
{
        int i,fact=1;
        for(i=1;i<=n;i++)
                fact=fact*i;
        return fact;
}


int main()
{
        double x, epwx=1, z, term;
    int j, n, i;

        printf("\nEnter the value for x : ") ;  //Example 4 5 6
        scanf("%lf", &x) ;
        printf("\nEnter the value for n : ") ;   //Example 10 20
        scanf("%d", &n) ;

        x = x * 3.14159 / 180 ;   //converting degree to radian
    i=0;
    z=exp(x);

        for(i=1;i<=n;i=i+1)
    {
            term=pow(x,i)/factorial(i);
        epwx=epwx+term;
    }
        printf("\nexp(x) is approximately %.15lf\n", epwx);
    printf("\nexp(x) by default function is %.15lf\n", z);

    return 0;
}