/* Source: https://www.codezclub.com/c-check-occurence-of-digit-in-number/ */
/*  C Program to check occurence of digit in a given number  */

#include<stdio.h>
#include<conio.h>

int main()
{
  int num,i,n,k,num1;
  printf("Enter any number :: ");
  scanf("%d",&num);
  n=num;
  i=0;
  printf("\nEnter the digit :: ");
  scanf("%d",&num1);

  while(n!=0)
  {
  k=n%10;
  n=n/10;
  if(k==num1)
  {
  i++;
  }
  }
  printf("\nThe occurrence of %d is %d times",num1,i);

  return 0;
}