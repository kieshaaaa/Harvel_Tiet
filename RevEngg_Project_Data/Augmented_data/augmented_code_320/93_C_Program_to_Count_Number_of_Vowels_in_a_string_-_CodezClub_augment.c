/* Source: https://www.codezclub.com/c-count-number-of-vowels-in-string/ */
/*  C Program to Count Number of Vowels in a string  */

#include<stdio.h>
int main()
{
    char str[150];
    int index, vowels, consonants, digits, spaces;
    vowels=consonants=digits=spaces=0;

    printf("\nEnter any String :: ");
    gets(str);

    index = 0;
    while(str[index] != '\0')
    {
        if(str[index]=='a' || str[index]=='e' || str[index]=='i' || str[index]=='o' || str[index]=='u' || str[index]=='A' || str[index]=='E' || str[index]=='I' || str[index]=='O' || str[index]=='U')
            ++vowels;
        else if((str[index]>='a'&& str[index]<='z') || (str[index]>='A'&& str[index]<='Z'))
            ++consonants;
        else if(str[index]>='0'&& str[index]<='9')
            ++digits;
        else if (str[index]==' ')
            ++spaces;
        index++;
    }
    printf("\nNumber of Vowels :: [ %d ]\n",vowels);
    printf("\nNumber of Consonants :: [ %d ]\n",consonants);
    printf("\nNumber of Digits :: [ %d ]\n",digits);
    printf("\nNumber of White spaces :: [ %d ]\n",spaces);

    return 0;
}