/* Source: https://www.codezclub.com/c-check-whether-character-is-vowel-or-not/ */
/*  C Program to check whether character is vowel or not using switch statement  */

#include<stdio.h>

int main()
{
  char ch;
  printf("Enter a character to check :: ");
  scanf("%c",&ch);
  switch(ch)
  {
  case 'a':
         printf("\nThe entered character %c is a vowel",ch);
         break;
  case 'e':
         printf("\nThe entered character %c is a vowel",ch);
         break;
  case 'i':
         printf("\nThe entered character %c is a vowel",ch);
         break;
  case 'o':
         printf("\nThe entered character %c is a vowel",ch);
         break;
  case 'u':
         printf("\nThe entered character %c is a vowel",ch);
         break;
  default:
         printf("\nThe entered character %c is a consonant",ch);
  }

  return 0;
}