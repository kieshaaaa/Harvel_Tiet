/* Source: https://www.codezclub.com/c-remove-repeated-characters-in-string/ */
/*  C program to Remove Duplicate Characters in a string  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string


/* Function declarations */
void removeDuplicates(char * string);
void removeAll(char * string, const char toRemove, int index);




int main()
{
    char string[MAX_SIZE];

    /* Reads string from user */
    printf("\nEnter any string: ");
    gets(string);

    printf("\nString before removing duplicates: %s\n", string);

    removeDuplicates(string);

    printf("\nString after removing duplicates: %s\n", string);

    return 0;
}




/**
 * Removes all duplicate characters from the given string
 */
void removeDuplicates(char * string)
{
    int i = 0;

    while(string[i] != '\0')
    {
        /* Remove all duplicate of character string[i] */
        removeAll(string, string[i], i);
        i++;
    }
}



/**
 * Removes all occurrences of a given character from string
 * after the given index.
 */
void removeAll(char * string, const char toRemove, int index)
{
    int i, j;

    i = index + 1;

    while(string[i] != '\0')
    {
        /* If duplicate character is found */
        if(string[i] == toRemove)
        {
            /*
             * Shift all characters from current position to one place left
             */
            j = i;
            while(string[j] != '\0')
            {
                string[j] = string[j + 1];
                j++;
            }
        }

        i++;
    }
}