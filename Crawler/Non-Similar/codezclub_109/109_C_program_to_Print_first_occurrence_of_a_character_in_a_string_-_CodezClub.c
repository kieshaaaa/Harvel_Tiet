/* Source: https://www.codezclub.com/c-find-first-occurrence-of-character-in-string/ */
/*  C program to Print first occurrence of a character in a string  */

#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100


/** Function declaration */
int indexOf(const char * text, const char toFind);



int main()
{
    char text[MAX_SIZE];
    char toFind;
    int index;

    /*
     * Reads a string from user and character to be searched
     */
    printf("\nEnter any string: ");
    gets(text);
    printf("\nEnter character to be searched: ");
    toFind = getchar();

    index = indexOf(text, toFind);

    if(index == -1)
    {
        printf("\n'%c' not found.\n", toFind);
    }
    else
    {
        printf("\nIndex of ['%c'] is [ %d ].\n", toFind, index);
    }

    return 0;
}


/**
 * Finds the first index of the given character toFind in the string text.
 */
int indexOf(const char * text, const char toFind)
{
    int index = -1;
    int i, len;

    len = strlen(text);

    for(i=0; i<len; i++)
    {
        if(text[i] == toFind)
        {
            index = i;
            break;
        }
    }

    return index;
}