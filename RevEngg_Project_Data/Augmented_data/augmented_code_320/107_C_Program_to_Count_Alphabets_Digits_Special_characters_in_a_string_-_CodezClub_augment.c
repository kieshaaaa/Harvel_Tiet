/* Source: https://www.codezclub.com/c-find-alphabets-digits-special-characters-in-string/ */
/*  C Program to Count Alphabets Digits Special characters in a string  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string


int main()
{
    char str[MAX_SIZE];
    int alpha, digit, other, index;

    alpha = digit = other = index = 0;


    /* Reads a string from user */
    printf("\nEnter any string : ");
    gets(str);

    /*
     * Checks each character of string
     */
    for(index = 0; str[index] != '\0'; index++)
    {
        if((str[index]>='a' && str[index]<='z') || (str[index]>='A' && str[index]<='Z'))
        {
            alpha++;
        }
        else if(str[index]>='0' && str[index]<='9')
        {
            digit++;
        }
        else
        {
            other++;
        }
    }

    printf("\nAlphabets = [ %d ]\n", alpha);
    printf("\nDigits = [ %d ]\n", digit);
    printf("\nSpecial characters = [ %d ]\n", other);

    return 0;
}