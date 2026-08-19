/* Source: https://www.includehelp.com/c-programs/c-program-to-concatenate-two-strings-strcat.aspx */
#include <stdio.h>
#include <string.h>
#define MAX_SIZE 100
 
 
/********************************************************
    *   function name       :stringCat
    *   Parameter           :char* s1,char* s2
    *   Return              :void
    *   Description         :Concatenate  two strings
********************************************************/
void stringCat (char *s1,char *s2);
 
 
int main()
{
    char str1[MAX_SIZE],str2[MAX_SIZE];

    printf("Enter  string 1 : ");
    scanf("%[^\n]s",str1);//read string with spaces
 
	getchar();//read enter after entering first string
 
    printf("Enter  string 2 : ");
    scanf("%[^\n]s",str2);//read string with spaces
 
    stringCat(str1,str2);
    printf("\nAfter concatenate strings are :\n");
    printf("String 1: %s \nString 2: %s",str1,str2);
 
    printf("\n");
    return 0;
}
 
/******** function definition *******/
void stringCat (char *s1,char *s2)
{
    int len,i;
    len=strlen(s1)+strlen(s2);
    if(len>MAX_SIZE)
    {
        printf("\nCan not Concatenate !!!");
        return;
    }
     
    len=strlen(s1);
    for(i=0;i< strlen(s2); i++)
    {
        s1[len+i]=s2[i];
    }
    s1[len+i]='\0'; /* terminates by NULL*/
}
