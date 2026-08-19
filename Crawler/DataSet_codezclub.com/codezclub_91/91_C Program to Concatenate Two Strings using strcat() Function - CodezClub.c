/* Source: https://www.codezclub.com/c-concatenate-two-string/ */
/*  C Program to Concatenate Two Strings using strcat() Function  */

#include<stdio.h>
#include<string.h>

int main()
{
    char ch1[50]="Codez";
    char ch2[50]="Club";

    printf("\n 1st String : [ %s]",ch1);
    printf("\n\n 2nd String : [ %s ]",ch2);

    strcat(ch1,ch2);

    printf("\n\n Concatenated String is : [ %s ]\n",ch1);

    return 0;
}