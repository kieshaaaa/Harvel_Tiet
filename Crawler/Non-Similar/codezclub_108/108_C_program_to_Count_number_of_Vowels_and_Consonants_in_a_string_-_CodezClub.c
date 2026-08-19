/* Source: https://www.codezclub.com/c-count-total-vowels-consonants-in-string/ */
/*  C program to Count number of Vowels and Consonants in a string  */

#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100 //Maximum size of the string

int main()
{
    char string[MAX_SIZE];
    int i, len, vowel, consonant;

    /* Reads string from user */
    printf("\nEnter any string: ");
    gets(string);

    vowel = 0;
    consonant = 0;
    len = strlen(string);

    for(i=0; i<len; i++)
    {
        /*
         * If the current character(string[i]) is a vowel both upper and lowercase characters
         */
        if(string[i] =='a' || string[i]=='e' || string[i]=='i' || string[i]=='o' || string[i]=='u' || string[i]=='A' || string[i]=='E' || string[i]=='I' || string[i]=='O' || string[i]=='U')
        {
            vowel++;
        }
        else if((string[i]>='a' && string[i]<='z') || (string[i]>='A' && string[i]<='Z'))
        {
            consonant++;
        }
    }

    printf("\nTotal number of vowel = [ %d ]\n", vowel);
    printf("\nTotal number of consonant = [ %d ]\n", consonant);

    return 0;
}