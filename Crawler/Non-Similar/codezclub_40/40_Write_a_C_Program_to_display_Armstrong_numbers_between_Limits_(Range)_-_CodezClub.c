/* Source: https://www.codezclub.com/c-find-armstrong-numbers/ */
#include<stdio.h>
#include<math.h>
int main()
{
long int lim_up,n,dig,sum,num,power=0;

printf("\n\nENTER THE UPPER LIMIT----- : ");
scanf("%d",&lim_up);
printf("\n\nARMSTRONG NUMBERS ARE: ");


for(n=10;n<lim_up;n++)
{
   num=n;
   power=0;
    while (num != 0)
    {
        num/= 10;
        ++power;
    }

sum = 0;
num = n;
while(num>0)
{
dig = num%10;
sum = sum+pow(dig,power);
num = num/10;
}
if(sum == n)
printf("\n\n\t%d",n);
}
return 0;
}