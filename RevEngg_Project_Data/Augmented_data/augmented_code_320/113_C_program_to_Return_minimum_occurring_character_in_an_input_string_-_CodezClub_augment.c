/* Source: https://www.codezclub.com/c-find-minimum-occurring-character-in-string/ */
/*  C program to Return minimum occurring character in an input string  */

#include <stdio.h>

#define MAX_SIZE 100 //Maximum size of the string
#define MAX_CHARS 255 //Maximum characters allowed


int main()
{
    char str[MAX_SIZE];
    int freq[MAX_CHARS]; //Stores frequency of each character
    int i = 0, minIndex;
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


    /* Finds minimum frequency */
    minIndex = 0;
    i = 0;
    while(i < MAX_CHARS)
    {
        if(freq[i] != 0)
        {
            if(freq[minIndex] == 0 || freq[i] < freq[minIndex])
                minIndex = i;
        }
        i++;
    }


    printf("\nLowest frequency of ['%c'] is [ %d ].\n", minIndex, freq[minIndex]);

    return 0;
}