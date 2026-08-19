/* Source: https://www.codezclub.com/c-count-length-of-string-without-library/ */
/*  C Program to find Length of String without using strlen function  */

#include<stdio.h>
int main()
{

      int index, length = 0;
      char str[50];

      printf("\nEnter Any string :: ");
      gets(str);

      index = 0;
      while(str[index] != '\0')
      {
            length++;
            index++;
      }

      printf("\nLength of String [ %s ] is :: [ %d ].\n",str,length);

      return 0;

}