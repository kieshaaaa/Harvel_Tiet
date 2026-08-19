/* Source: https://www.codezclub.com/c-find-prime-numbers-between-given-range/ */
#include<stdio.h>

int main()
{
long int i, prime, lim_up, lim_low, n;

printf("\n\nENTER THE LOWER LIMIT-----: ");
scanf("%d", &lim_low);
printf("\n\nENTER THE UPPER LIMIT-----: ");
scanf("%d", &lim_up);
printf("\n\nPRIME NUMBERS ARE---------: ");

for(n=lim_low+1; n<lim_up; n++)
{
prime = 1;
for(i=2; i<n; i++)
if(n%i == 0)
{
prime = 0;
break;
}
if(prime)
printf("%d, ", n);
}
return 0;
}