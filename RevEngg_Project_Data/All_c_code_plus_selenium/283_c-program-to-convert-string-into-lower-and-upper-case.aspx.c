/* Source: https://www.includehelp.com/c-programs/c-program-to-convert-string-into-lower-and-upper-case.aspx */
#include <stdio.h>
 
 
/********************************************************
    *   function name       :stringLwr, stringUpr
    *   Parameter           :character pointer s
    *   Description         
        stringLwr   - converts string into lower case
        stringUpr   - converts string into upper case
********************************************************/
void stringLwr(char *s);
void stringUpr(char *s);
 
int main()
{
    char str[100];
 
	printf("Enter any string : ");
    scanf("%[^\n]s",str);//read string with spaces
    
    stringLwr(str);
    printf("String after stringLwr : %s\n",str);
    
    stringUpr(str);
    printf("String after stringUpr : %s\n",str);
    return 0;
}
 
/******** function definition *******/
void stringLwr(char *s)
{
    int i=0;
    while(s[i]!='\0')
    {
        if(s[i]>='A' && s[i]<='Z'){
            s[i]=s[i]+32;
        }
        ++i;
    }
}
 
void stringUpr(char *s)
{
    int i=0;
    while(s[i]!='\0')
    {
        if(s[i]>='a' && s[i]<='z'){
            s[i]=s[i]-32;
        }
        ++i;
    }
}
