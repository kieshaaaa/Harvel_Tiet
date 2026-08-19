/* Source: https://www.codezclub.com/c-find-perfect-numbers-below-given-number/ */
// C Program to find the perfect number below a given number


#include<stdio.h>
#include<math.h>
int main()
{
int i,n,sum,lim;

printf("\n\n\t ENTER THE UPPER LIMIT: ");
scanf("%d",&lim);
printf("\n\n\t THE PERFECT NUMBER ARE..: ");
for(n=1;n<lim;n++)
{
sum = 0;
for(i=1;i<n;i++)
if(n%i == 0)
sum = sum + i;
if (sum == n)
printf("\n\n\t\t\t%d",n);
}
return 0;
}