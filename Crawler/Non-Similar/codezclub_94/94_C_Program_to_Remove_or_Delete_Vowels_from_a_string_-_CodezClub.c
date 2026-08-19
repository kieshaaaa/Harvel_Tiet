/* Source: https://www.codezclub.com/c-delete-vowels-from-string/ */
/*  C Program to Remove or Delete Vowels from a string  */

#include <stdio.h>
#include <string.h>

int check_vowel(char);

int main()
{
        char s[100], t[100];
        int i, j = 0;

        printf("\nEnter any string :: ");
        gets(s);

        for(i = 0; s[i] != '\0'; i++) {
                if(check_vowel(s[i]) == 0) {       //not a vowel
                        t[j] = s[i];
                        j++;
                }
        }

        t[j] = '\0';

        strcpy(s, t);    //We are changing initial string

        printf("\nString after deleting vowels :: [ %s ]\n", s);

        return 0;
}


int check_vowel(char c)
{
        switch(c) {
                case 'a':
                case 'A':
                case 'e':
                case 'E':
                case 'i':
                case 'I':
                case 'o':
                case 'O':
                case 'u':
                case 'U':
                return 1;
                default:
                return 0;
        }
}