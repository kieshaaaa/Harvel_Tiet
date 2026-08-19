/* Source: https://www.codezclub.com/c-check-number-palindrome-or-not/ */
#include<stdio.h>
#include<math.h>
int main()
{
long int n, num, rev = 0, dig;

printf("\n\nENTER A NUMBER----: ");
scanf("%ld", &num);
n = num;
while(num>0)
{
dig = num % 10;
rev = rev * 10 + dig;
num = num / 10;
}
if (n == rev)
printf("\nGIVEN NUMBER IS A PALINDROME");
else
printf("\nGIVEN NUMBER IS NOT A PALINDROME");
return 0;
}