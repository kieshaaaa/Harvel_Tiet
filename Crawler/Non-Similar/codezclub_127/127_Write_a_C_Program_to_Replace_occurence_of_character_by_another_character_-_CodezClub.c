/* Source: https://www.codezclub.com/c-replace-character-another-character/ */
/* Replace  each occurence of a character by another character*/


#include<stdio.h>
void f(char *s, char a, char b);
int main()
{
        char str[100],a,b;
        printf("Enter a string : ");
        gets(str);
        printf("Enter two characters below (1st - replace character , 2nd - replace with ::\n");
        scanf("%c %c",&a,&b);
        f(str,a,b);
        printf("\nReplaced String is :: ");
        puts(str);
        return 0;
}
void f(char *str, char a, char b)
{
    if(*str=='\0')
                return;
    if(*str==a)
                *str=b;
        f(str+1,a,b);
}