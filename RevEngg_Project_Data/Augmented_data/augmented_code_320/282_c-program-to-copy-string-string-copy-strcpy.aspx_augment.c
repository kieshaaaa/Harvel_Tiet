/* Source: https://www.includehelp.com/c-programs/c-program-to-copy-string-string-copy-strcpy.aspx */
#include <stdio.h>
 
/********************************************************
    *   function name       :myStrCpy
    *   Parameter           :dest, source : string
    *   Description         : copies string source into dest
********************************************************/
void myStrCpy(char* dest,char* source);
 
int main()
{
    char str1[100],str2[100];
    
    printf("Enter string 1: "); 
    scanf("%[^\n]s",str1);//read string with spaces
    
    myStrCpy(str2,str1);
    
    printf("String 1: %s \nString 2: %s\n",str1,str2);
    return 0;
}
 
/******** function definition *******/
void myStrCpy(char* dest,char* source)
{
    int i=0;
    for(;source[i]!='\0';i++)
    {
        dest[i]=source[i];
    }
    dest[i]='\0'; /*string terminates by NULL*/
}