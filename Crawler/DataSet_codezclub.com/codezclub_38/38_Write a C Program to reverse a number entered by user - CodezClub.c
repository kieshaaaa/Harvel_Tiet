/* Source: https://www.codezclub.com/c-reverse-a-number-entered-by-user/ */
#include<stdio.h>
#include<math.h>
int main()
{
long int num, rev = 0, dig;

printf("\n\nENTER A NUMBER-----: ");
scanf("%ld", &num);
while(num>0)
{
dig = num % 10;
rev = rev * 10 + dig;
num = num / 10;
}
printf("\nREVERSED NUMBER IS----: %ld", rev);
return 0;
}