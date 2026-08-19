/* Source: https://www.codezclub.com/c-search-all-occurrences-of-character-in-string/ */
/*  C program to find all occurrence of a character in a string  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string

int main()
{
    char string[MAX_SIZE];
    char search;
    int i;

    /*
     * Reads a string and character from user
     */
    printf("\nEnter any string: ");
    gets(string);
    printf("\nEnter any character to search: ");
    search = getchar();

    //Runs a loop till the NULL character is found
    for(i=0; string[i]!='\0'; i++)
    {
        /*
         * If character is found in string
         */
        if(string[i] == search)
        {
            printf("\n['%c'] is found at index [ %d ]\n", search, i);
        }
    }

    return 0;
}