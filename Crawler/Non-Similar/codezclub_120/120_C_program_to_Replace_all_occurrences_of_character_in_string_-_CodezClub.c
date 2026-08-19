/* Source: https://www.codezclub.com/c-replace-all-occurrences-of-character-in-string/ */
/*  C program to Replace all occurrences of character in string  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the string


/* Function declaration */
void replace(char * string, char toReplace, char replaceWith);



int main()
{
    char string[MAX_SIZE], toReplace, replaceWith;

    printf("\nEnter any string: ");
    gets(string);

    printf("\nEnter character to replace: ");
    scanf(" %c", &toReplace);

    printf("\nEnter character to replace '%c' with: ", toReplace);
    scanf(" %c", &replaceWith);


    printf("\nString before replacing: %s\n", string);

    replace(string, toReplace, replaceWith);

    printf("\nString after replacing: %s\n", string);

    return 0;
}




/**
 * Replaces the all occurrence of a character
 * with another in given string.
 */
void replace(char * string, char toReplace, char replaceWith)
{
    int i = 0;

    /* Runs till the end of string */
    while(string[i] != '\0')
    {
        /* If an occurrence of character is found */
        if(string[i] == toReplace)
        {
            string[i] = replaceWith;
        }

        i++;
    }
}