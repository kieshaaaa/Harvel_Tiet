/* Source: https://www.codezclub.com/c-count-consonants-vowels-string-using-pointer/ */
/*  C program to count number of vowels and consonants in a string using pointer  */

#include <stdio.h>
int main()
{
    char str[100];
    char *ptr;
    int  cntV,cntC;

    printf("Enter any string :: ");
    scanf("%s",str);

    //assign address of str to ptr
    ptr=str;

    cntV=cntC=0;
    while(*ptr!='\0')
    {
        if(*ptr=='A' ||*ptr=='E' ||*ptr=='I' ||*ptr=='O' ||*ptr=='U' ||*ptr=='a' ||*ptr=='e' ||*ptr=='i' ||*ptr=='o' ||*ptr=='u')
            cntV++;
        else
            cntC++;
        //increase the pointer, to point next character
        ptr++;
    }

    printf("\nTotal number of VOWELS :: %d and CONSONANTS :: %d\n\n",cntV,cntC);

    return 0;
}