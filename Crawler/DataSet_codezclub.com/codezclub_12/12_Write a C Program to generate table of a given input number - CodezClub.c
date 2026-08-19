/* Source: https://www.codezclub.com/c-generate-table-of-number/ */
/*  C Program to generate table of a given input number  */

#include<stdio.h>
#include<conio.h>

int main()
{
  int num,result,i=1;
  printf("Enter any number to generate the table : ");
  scanf("%d",&num);
  printf("\nThe table of %d is given below :: \n",num);
  while(i<=10)
  {
  result=num*i;
  printf(" %d * %d = %d\n",num,i,result);
  i++;
  }
return 0;
}