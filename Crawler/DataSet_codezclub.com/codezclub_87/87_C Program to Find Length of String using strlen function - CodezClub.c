/* Source: https://www.codezclub.com/c-count-length-of-string-using-library-function/ */
/*  C Program to Find Length of String using strlen function  */

#include<stdio.h>
#include<string.h>

int main()
{

  char str[50];
  int length;

  printf("\nEnter any string :: ");
  gets(str);

  length = strlen(str);

  printf("\nLength of string [ %s ] :: [ %d ]\n",str,length);

  return 0;
}