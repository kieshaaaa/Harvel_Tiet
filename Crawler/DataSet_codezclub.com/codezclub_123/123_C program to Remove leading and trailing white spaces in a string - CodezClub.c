/* Source: https://www.codezclub.com/c-trim-leading-trailing-white-spaces-in-string/ */
/*  C program to Remove leading and trailing white spaces in a string  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the string


/* Function declaration */
void trimT(char * string);



int main()
{
    char string[MAX_SIZE];

    /* Reads string from user */
    printf("\nEnter any string: ");
    gets(string);

    printf("\nString before trimming whitespace: \"%s\"\n", string);

    trim(string);

    printf("\nString after trimming whitespace: \"%s\"\n", string);

    return 0;
}




/**
 * Remove leading and trailing whitespace characters from a string
 */
void trim(char * string)
{
    int lastIndex, lastSpaceIndex, i, j;

    /*
     * Trims leading white spaces
     */
    lastSpaceIndex = 0;

    /* Finds the last index of whitespace character */
    while(string[lastSpaceIndex] == ' ' || string[lastSpaceIndex] == '\t' || string[lastSpaceIndex] == '\n')
    {
        lastSpaceIndex++;
    }


    /* Shits all trailing characters to its left */
    i = 0;
    while(string[i + lastSpaceIndex] != '\0')
    {
        string[i] = string[i + lastSpaceIndex];
        i++;
    }
    string[i] = '\0'; //Make sure that string is NULL terminated



    /*
     * Trims trailing white spaces
     */

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