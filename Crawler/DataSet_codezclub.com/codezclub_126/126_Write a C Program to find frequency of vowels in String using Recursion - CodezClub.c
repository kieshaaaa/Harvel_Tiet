/* Source: https://www.codezclub.com/c-count-frequency-of-vowels-string/ */
/* C Program to find frequency of vowels in String using Recursion*/


#include<stdio.h>
#include<string.h>
int count_vowels(char *str);

int main()
{
        char str[100];
        printf("Enter any string :: ");
    gets(str);
        printf("\n Total no. of vowels in String [ %s ] = %d\n",str,count_vowels(str));

        return 0;
}
int count_vowels(char *str)
{
    if(*str == '\0')
                return 0;
        switch(*str)
    {
            case 'A': case 'a':
                case 'E': case 'e':
                case 'I': case 'i':
                case 'O': case 'o':
                case 'U': case 'u':
             return 1 + count_vowels(str+1);
                default:
             return count_vowels(str+1);
    }
}