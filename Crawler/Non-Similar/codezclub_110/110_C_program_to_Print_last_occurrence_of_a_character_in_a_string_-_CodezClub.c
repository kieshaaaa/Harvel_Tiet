/* Source: https://www.codezclub.com/c-find-last-occurrence-of-character-in-string/ */
/*  C program to Print last occurrence of a character in a string  */

#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100



/** Function declaration */
int lastIndexOf(const char * text, const char toFind);



int main()
{
    char text[MAX_SIZE];
    char toFind;
    int index;

    printf("\nEnter any string: ");
    gets(text);

    printf("\nEnter any character to find: ");
    toFind = getchar();

    index = lastIndexOf(text, toFind);

    printf("\nLast index of [ %c ] is [ %d ]\n", toFind, index);

    return 0;
}



/**
 * Function to find last index of any character in the given string
 */
int lastIndexOf(const char * text, const char toFind)
{
    int index = -1;
    int i, len;

    len = strlen(text);

    for(i=0; i<len; i++)
    {
        if(text[i] == toFind)
        {
            index = i;
        }
    }

    return index;
}