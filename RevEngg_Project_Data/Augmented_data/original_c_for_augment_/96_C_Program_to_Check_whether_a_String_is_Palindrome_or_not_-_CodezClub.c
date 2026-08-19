/* Source: https://www.codezclub.com/c-check-string-palindrome-or-not/ */
/*  C Program to Check whether a String is Palindrome or not  */

#include<stdio.h>

int main()
{
        char str[100];
        int i=0,j=0,flag=0;

        printf("\nEnter a string :: ");
        scanf("%s",str);


        while(str[j]!='\0')
    {
        j++;
    }

        while(i<j)
    {
                j--;
                if(str[i] != str[j])
                {
                        flag=1;
                        break;
                }
                i++;
        }

        if(flag == 0)
                printf("\nThe string [ %s ] is a Palindrome.\n");
        else
                printf("The string [ %s ] is not a Palindrome.\n");

        return 0;
}