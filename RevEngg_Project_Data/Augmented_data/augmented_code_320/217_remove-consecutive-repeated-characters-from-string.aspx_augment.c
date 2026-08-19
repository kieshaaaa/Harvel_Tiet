/* Source: https://www.includehelp.com/c-programs/remove-consecutive-repeated-characters-from-string.aspx */
/*C program to remove consecutive repeated characters from string.*/
 
#include <stdio.h>
 
int main()
{
 
    char text[100];
    int a,b,stringLength,removedChars;
 
    /*read string*/
    printf("Enter any string: ");
    gets(text);
     
    /*calculating length*/
    stringLength = 0;
    while (text[stringLength] != '\0') {
        stringLength++;
    }
 
    /*assign 0 to removedChars - length of removed characters*/
    removedChars = 0;
 
    /*Removing consecutive repeated characters from string*/
    a = 0;
    while (a < (stringLength - removedChars))
    {
        if(text[a]==text[a+1])
        {
            /*shift all characters*/
            for(b=a;b<(stringLength-removedChars);b++)
                text[b]=text[b+1];
            removedChars++;
        }
        else
        {
            a++;
        }
    }
 
    printf("String after removing characaters: %s\n",text);
 
    return 0;
}