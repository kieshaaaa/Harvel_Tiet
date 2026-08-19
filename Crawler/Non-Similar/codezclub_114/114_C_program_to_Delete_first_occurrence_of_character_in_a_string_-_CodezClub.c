/* Source: https://www.codezclub.com/c-remove-first-occurrence-character-from-string/ */
/*  C program to Delete first occurrence of character in a string  */

#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100 //Maximum size of the string



/** Function declaration */
void removeFirst(char *, const char);



int main()
{
    char string[MAX_SIZE];
    char toRemove;

    printf("\nEnter any string: ");
    gets(string);

    printf("\nEnter character to remove from string: ");
    toRemove = getchar();

    removeFirst(string, toRemove);

    printf("\nOutput : [ %s ]\n", string);

    return 0;
}



/**
 * Function to remove first occurrence of a character from the string.
 */
void removeFirst(char * string, const char toRemove)
{
    int i;
    int len = strlen(string);

    i=0;

    /* Run loop until the first occurrence of the character is not found */
    while(i<len && string[i]!=toRemove)
        i++;

    /*
     * Shift all characters right to the position found above to one place left
     */
    while(i<len-1)
    {
        string[i] = string[i+1];
        i++;
    }

    /* Make the last character null */
    string[i] = '\0';
}