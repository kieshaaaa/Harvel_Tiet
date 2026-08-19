/* Source: https://www.codezclub.com/c-copy-string-into-second-string/ */
/*  C Program to Copy a String without using strcpy function  */

#include<stdio.h>
int main()
{
  char source_string[100], dest_string[100];
  int index = 0;

  printf("\nEnter ant String s1 :: ");
  scanf("%s",source_string);

  while(source_string[index] != '\0')
  {
    dest_string[index] = source_string[index];
    index++;
  }

  dest_string[index]='\0';

  printf("\nAfter Copying, String s2 :: [ %s ]\n",dest_string);

  return 0;
}