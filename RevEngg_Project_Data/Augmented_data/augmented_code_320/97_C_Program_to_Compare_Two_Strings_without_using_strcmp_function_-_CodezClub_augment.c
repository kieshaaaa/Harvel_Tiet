/* Source: https://www.codezclub.com/c-compare-two-strings-without-functions/ */
/*  C Program to Compare Two Strings without using strcmp function  */

#include<stdio.h>

int main()
{
        char string1[20], string2[20];
        int index=0, count=0;

        printf("\nEnter first string :: ");
        gets(string1);
        printf("\nEnter second string :: ");
        gets(string2);

        printf("\nStrings are :: \n\n");
        puts(string1);
        puts(string2);

        for(; (string1[index]!='\0') || (string2[index]!='\0'); index++)
        {
                if(string1[index]!=string2[index])
                        count++;
        }

        if(count==0)
                puts("\nStrings are equal.\n");
        else
                puts("\nStrings are not equal.\n");

        return 0;
}