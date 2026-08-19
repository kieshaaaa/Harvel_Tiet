#include <stdio.h>

/********************************************************
     *   function name       :toLower, toUpper
     *   Parameter           :character pointer str
     *   Description         
         toLower   - converts string into lower case
         toUpper   - converts string into upper case
********************************************************/
void toLower(char *str);
void toUpper(char *str);

int main()
{
    char inputString[100];

	printf("Enter any string : ");
    scanf("%[^\n]s",inputString);//read string with spaces
    
    toLower(inputString);
    printf("String after toLower : %s\n",inputString);
    
    toUpper(inputString);
    printf("String after toUpper : %s\n",inputString);
    return 0;
}

/******** function definition *******/
void toLower(char *str)
{
    int i=0;
    for(; str[i]!='\0'; ++i)
    {
        if(str[i]>='A' && str[i]<='Z'){
            str[i]=str[i]+32;
        }
    }
}

void toUpper(char *str)
{
    int i=0;
    for(; str[i]!='\0'; ++i)
    {
        if(str[i]>='a' && str[i]<='z'){
            str[i]=str[i]-32;
        }
    }
}