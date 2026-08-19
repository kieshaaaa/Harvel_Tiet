/* Source: https://www.codezclub.com/c-trim-trailing-white-space-characters-in-a-string/ */
/*  C program to Remove Trailing white spaces in a string  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the string


/* Function declaration */
void trimTrailing(char * string);



int main()
{
    char string[MAX_SIZE];

    /* Reads string from user */
    printf("\nEnter any string: ");
    gets(string);

    printf("\nString before Removing trailing whitespace: \"%s\"\n", string);

    trimTrailing(string);

    printf("\nString after Removing trailing whitespace: \"%s\"\n", string);

    return 0;
}




/**
 * Remove trailing whitespace characters from a string
 */
void trimTrailing(char * string)
{
    int lastIndex, i;

    /* Finds the last non white space character */
    i = 0;
    while(string[i] != '\0')
    {
        if(string[i] != ' ' && string[i] != '\t' && string[i] != '\n')
        {
            lastIndex = i;
        }

        i++;
    }

    /* Mark the next character to last non white space character as NULL */
    string[lastIndex + 1] = '\0';
}