/* Source: https://www.codezclub.com/c-count-length-of-string-without-library/ */
/*  C Program to find Length of String without using strlen function  */

#include<stdio.h>
int main()
{

      int i,count=0;
      char ch[50];

      printf("\nEnter Any string :: ");
      gets(ch);

      for(i=0;ch[i]!='\0';i++)
      {
            count++;
      }

      printf("\nLength of String [ %s ] is :: [ %d ].\n",ch,count);

      return 0;

}