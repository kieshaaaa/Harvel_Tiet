/* Source: https://www.includehelp.com/c-programs/remove-consecutive-repeated-characters-from-string.aspx */
/*C program to remove consecutive repeated characters from string.*/
 
#include <stdio.h>
 
int main()
{
 
    char text[100];
    int idx,jdx,length,removedCount;
 
    /*read string*/
    printf("Enter any string: ");
    gets(text);
     
    /*calculating length*/
    length = 0;
    while(text[length] != '\0') {
        length++;
    }
 
    /*assign 0 to removedCount - length of removed characters*/
    removedCount = 0;
 
    /*Removing consecutive repeated characters from string*/
    idx = 0;
    while(idx < (length - removedCount))
    {
        if(text[idx]==text[idx+1])
        {
            /*shift all characters*/
            for(jdx=idx;jdx<(length-removedCount);jdx++)
                text[jdx]=text[jdx+1];
            removedCount++;
        }
        else
        {
            idx++;
        }
    }
 
    printf("String after removing characaters: %s\n",text);
 
    return 0;
}