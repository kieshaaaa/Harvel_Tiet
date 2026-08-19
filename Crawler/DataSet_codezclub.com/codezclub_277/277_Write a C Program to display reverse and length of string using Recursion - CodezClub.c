/* Source: https://www.codezclub.com/c-display-reverse-length-string/ */
/* C Program to display reverse and length of string using Recursion */


#include<stdio.h>
#include<string.h>
void display(char *str);
void Rdisplay(char *str);
int length(char *str);

int main( )
{
        char str[100];
        printf("Enter a string : ");
        gets(str);

        printf("\nOriginal string : ");
        display( str );
        printf("\n");
        printf("\nReverse string : ");
        Rdisplay(str);
        printf("\n");
        printf("\nLength of a string : ");
        printf("%d\n",length(str));

        return 0;

}/*End of main()*/

void display(char *str )
{
        if(*str == '\0')
              return;
        putchar(*str );
        display(str+1);
}/*End of display()*/

void Rdisplay(char *str )
{
        if(*str == '\0')
              return;
        Rdisplay(str+1);
        putchar(*str );
}/*End of Rdisplay()*/

int length(char *str )
{
        if(*str == '\0')
              return 0;
        return (1 + length(str+1));
}/*End of length()*/