/* Source: https://www.includehelp.com/c-programs/c-program-to-compare-two-strings-strcmp-strcmpi.aspx */
#include <stdio.h>
#include <ctype.h>
 
 
/********************************************************
    *   function name       :stringCmp, stringCmpi
    *   Parameter           :char* s1,char* s2
    *   Return              :0- success, 1- fail
    *   Description         
        stringCmp   - compares two strings
        stringCmpi  - compares two string (ignoring case)
********************************************************/
int stringCmp (char *s1,char *s2);
int stringCmpi(char *s1,char *s2);
 
int main()
{
    char str1[100],str2[100];
 
	printf("Enter  string 1 : ");
    scanf("%[^\n]s",str1);//read string with spaces

    getchar(); //to read enter after first string
 
    printf("Enter  string 2 : ");
    scanf("%[^\n]s",str2);//read string with spaces
 
    if(!stringCmp(str1,str2))
        printf("\n stringCmp  :String are same.");
    else
        printf("\n stringCmp  :String are not same.");
 
    if(!stringCmpi(str1,str2))
        printf("\n stringCmpi :String are same.");
    else
        printf("\n stringCmpi :String are not same.");
 
 
    printf("\n");
    return 0;
}
 
/******** function definition *******/
int stringCmp (char *s1,char *s2)
{
    int i=0;
    for(i=0; s1[i]!='\0'; i++)
    {
        if(s1[i]!=s2[i])
            return 1;
    }
    return 0;
}
 
/******** function definition *******/
int stringCmpi (char *s1,char *s2)
{
    int i=0,diff=0;
    for(i=0; s1[i]!='\0'; i++)
    {
        if( toupper(s1[i])!=toupper(s2[i]) )
            return 1;           
    }
    return 0;
}
