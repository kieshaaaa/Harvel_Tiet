/* Source: https://www.codezclub.com/c-find-maximum-occurring-character-in-a-string/ */
/*  C program to Return Maximum occurring character in an input string  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the string
#define MAX_CHARS 255 //Maximum characters allowed


int main()
{
    char string[MAX_SIZE];
    int frequency[MAX_CHARS]; //Stores frequency of each character
    int i = 0, max;
    int ascii;

    printf("\nEnter any string: ");
    gets(string);

    /* Initializes frequency of all characters to 0 */
    for(i=0; i<MAX_CHARS; i++)
    {
        frequency[i] = 0;
    }


    /* Finds frequency of each characters */
    i=0;
    while(string[i] != '\0')
    {
        ascii = (int)string[i];
        frequency[ascii] += 1;

        i++;
    }


    /* Finds maximum frequency */
    max = 0;
    for(i=0; i<MAX_CHARS; i++)
    {
        if(frequency[i] > frequency[max])
            max = i;
    }


    printf("\nHighest frequency of ['%c'] is [ %d ].\n", max, frequency[max]);

    return 0;
}