/* Source: https://www.codezclub.com/c-remove-last-occurrence-character-from-string/ */
/*  C program to Delete last occurrence of character in a string  */

#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100 //Maximum size of the string



/** Function declaration */
void removeLast(char *, const char);



int main()
{
    char string[MAX_SIZE];
    char toRemove;

    printf("\nEnter any string: ");
    gets(string);

    printf("\nEnter character to remove from string: ");
    toRemove = getchar();

    removeLast(string, toRemove);

    printf("\nOutput : %s", string);

    return 0;
}



/**
 * Function to remove last occurrence of a character from the string.
 */
void removeLast(char * string, const char toRemove)
{
    int i, lastPosition;
    int len = strlen(string);

    lastPosition = -1;
    i=0;

    while(i<len)
    {
        if(string[i] == toRemove)
        {
            lastPosition = i;
        }

        i++;
    }

    if(lastPosition != -1)
    {
        i = lastPosition;

        /*
         * Shift all characters right to the position found above to left
         */
        while(i<len-1)
        {
            string[i] = string[i+1];
            i++;
        }
    }

    /* Make the last character null */
    string[i] = '\0';
}