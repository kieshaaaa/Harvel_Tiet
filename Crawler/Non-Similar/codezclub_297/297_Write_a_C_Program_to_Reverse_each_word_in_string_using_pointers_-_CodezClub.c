/* Source: https://www.codezclub.com/c-reverse-string-using-pointers/ */
/* C Program to Reverse each word in string using pointers */

#include <stdio.h>
#include <conio.h>

int main()
{
        char str[50];
        int len,i,j,sp=0,start,end;
        char *s;

        printf("Enter any String :: ");
        gets(str);

        s=str;

    printf("\nAfter reversing Each Word of String [ %s ] :: \n",s);

        len=strlen(s);
        end=len-1;
        for(i=len-1;i>=0;i--)
        {
                if(s[i]==32 || i==0)
                {
                        if(i==0)
                                start=0;
                        else
                                start=i+1;
                        for(j=start;j<=end;j++)
                                printf("%c",s[j]);
                        end=i-1;
                        printf(" ");
                }
        }

        printf("\n");

        return 0;
}