/* Source: https://www.codezclub.com/c-counting-number-of-words-in-string/ */
/*  C Program to Count Number of Words in a string  */

#include<stdio.h>
#define FALSE 0
#define TRUE  1

int main()
{
        int wc=0,flag =FALSE,i=0;
    char str[30];
    printf("\nEnter a string :: ");
        gets(str);
    while (str[i]!='\0')
    {
        // If next character is a separator, set the flag to false
        if (str[i] == ' ' || str[i] == '\n' || str[i] == '\t')
            flag = FALSE;

        /* If next character is not a separator and flag is false,
        then set the flag as TRUE and increment word count */
        else if (flag == FALSE)
        {
            flag = TRUE;
            ++wc;
        }

        // increment i for moving the curser to next character
        ++i;
    }

        printf("\nNo. of words in string [ %s ] is: [ %d ]\n",str,wc);
        return 0;

}