/* Source: https://www.includehelp.com/c-programs/pass-an-array-of-strings-to-a-function.aspx */
/*  
C program to array of strings to a function
*/

#include <stdio.h>

// function to print strings
void Strfun(char **ptr , int count)
{
    int i=0;
    
    for(i=0;i<count;i++)
    {
        printf("\nString [%d] : %s",i,ptr[i]);  fflush(stdout);
    }
    
}

// main function
int main()
{ 
   // Declare an array of pointers and assign some strings into it
   char *buff[4] = {"Hello function" , "How are you?" , "Catch some strings"};
	
   // Passing array of strings to Function
   Strfun(buff,3); // here 3 is the number of strings
   return 0;
}
