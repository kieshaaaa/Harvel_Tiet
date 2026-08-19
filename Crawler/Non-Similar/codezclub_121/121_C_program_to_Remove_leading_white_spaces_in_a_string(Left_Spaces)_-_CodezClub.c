/* Source: https://www.codezclub.com/c-trim-leading-white-space-characters-in-string/ */
/*  C program to Remove leading white spaces in a string(Left Spaces)  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string


/* Function declaration */
void trimLeading(char * string);



int main()
{
    char string[MAX_SIZE];

    /* Reads string from user */
    printf("\nEnter any string: ");
    gets(string);

    printf("\nString before Removing leading whitespace: %s\n", string);

    trimLeading(string);

    printf("\nString after Removing leading whitespace: %s\n", string);

    return 0;
}




/**
 * Remove leading whitespace characters from a string
 */
void trimLeading(char * string)
{
    int lastSpaceIndex, i, j;

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
}