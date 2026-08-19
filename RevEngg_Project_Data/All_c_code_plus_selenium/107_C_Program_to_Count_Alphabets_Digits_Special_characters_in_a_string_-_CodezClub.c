/* Source: https://www.codezclub.com/c-find-alphabets-digits-special-characters-in-string/ */
/*  C Program to Count Alphabets Digits Special characters in a string  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string


int main()
{
    char string[MAX_SIZE];
    int alphabets, digits, others, i;

    alphabets = digits = others = i = 0;


    /* Reads a string from user */
    printf("\nEnter any string : ");
    gets(string);

    /*
     * Checks each character of string
     */
    while(string[i]!='\0')
    {
        if((string[i]>='a' && string[i]<='z') || (string[i]>='A' && string[i]<='Z'))
        {
            alphabets++;
        }
        else if(string[i]>='0' && string[i]<='9')
        {
            digits++;
        }
        else
        {
            others++;
        }

        i++;
    }

    printf("\nAlphabets = [ %d ]\n", alphabets);
    printf("\nDigits = [ %d ]\n", digits);
    printf("\nSpecial characters = [ %d ]\n", others);

    return 0;
}