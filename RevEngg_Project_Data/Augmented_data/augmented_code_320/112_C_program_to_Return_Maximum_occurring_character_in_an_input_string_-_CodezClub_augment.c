/* Source: https://www.codezclub.com/c-find-maximum-occurring-character-in-a-string/ */
/*  C program to Return Maximum occurring character in an input string  */

#include <stdio.h>
#define MAX_SIZE 100 //Maximum size of the string
#define MAX_CHARS 255 //Maximum characters allowed


int main()
{
    char str[MAX_SIZE];
    int freq[MAX_CHARS]; //Stores frequency of each character
    int i = 0, maxIndex;
    int charCode;

    printf("\nEnter any string: ");
    gets(str);

    /* Initializes frequency of all characters to 0 */
    i = 0;
    while(i < MAX_CHARS)
    {
        freq[i] = 0;
        i++;
    }


    /* Finds frequency of each characters */
    i=0;
    while(str[i] != '\0')
    {
        charCode = (int)str[i];
        freq[charCode] += 1;

        i++;
    }


    /* Finds maximum frequency */
    maxIndex = 0;
    i = 0;
    while(i < MAX_CHARS)
    {
        if(freq[i] > freq[maxIndex])
            maxIndex = i;
        i++;
    }


    printf("\nHighest frequency of ['%c'] is [ %d ].\n", maxIndex, freq[maxIndex]);

    return 0;
}