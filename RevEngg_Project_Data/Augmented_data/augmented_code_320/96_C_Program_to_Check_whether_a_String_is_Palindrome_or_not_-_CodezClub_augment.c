/* Source: https://www.codezclub.com/c-check-string-palindrome-or-not/ */
/*  C Program to Check whether a String is Palindrome or not  */

#include<stdio.h>

int main()
{
        char str[100];
        int idx1=0,idx2=0,flag=0;

        printf("\nEnter a string :: ");
        scanf("%s",str);


        while(str[idx2]!='\0')
    {
        idx2++;
    }

        for(idx1=0; idx1<idx2; idx1++)
    {
                idx2--;
                if(str[idx1] != str[idx2])
                {
                        flag=1;
                        break;
                }
        }

        if(flag == 0)
                printf("\nThe string [ %s ] is a Palindrome.\n", str);
        else
                printf("The string [ %s ] is not a Palindrome.\n", str);

        return 0;
}