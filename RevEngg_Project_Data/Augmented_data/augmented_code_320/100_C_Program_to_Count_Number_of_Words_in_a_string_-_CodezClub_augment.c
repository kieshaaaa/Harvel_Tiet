/* Source: https://www.codezclub.com/c-counting-number-of-words-in-string/ */
/*  C Program to Count Number of Words in a string  */

#include<stdio.h>
#define FALSE 0
#define TRUE  1

int main()
{
    int wordCount=0,flag =FALSE;
    int i=0;
    char sentence[30];
    printf("\nEnter a string :: ");
    gets(sentence);
    i = 0;
    while (sentence[i]!='\0')
    {
        
        if (sentence[i] == ' ' || sentence[i] == '\n' || sentence[i] == '\t')
            flag = FALSE;
        else if (flag == FALSE)
        {
            flag = TRUE;
            ++wordCount;
        }
        ++i;
    }

    printf("\nNo. of words in string [ %s ] is: [ %d ]\n",sentence,wordCount);
    return 0;

}