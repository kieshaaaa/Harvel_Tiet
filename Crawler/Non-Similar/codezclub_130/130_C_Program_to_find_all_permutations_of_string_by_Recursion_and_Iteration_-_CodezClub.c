/* Source: https://www.codezclub.com/c-find-permutations-of-string/ */
/* C Program to find all permutations of string by Recursion and Iteration */


#include<stdio.h>
#include<string.h>

void Permute1(char str[], char* currentptr);
void Permute2(char str[], int startIndex, int lastIndex);
void Swap(char *a, char *b);

int main()
{
        char str[20];
        printf("Enter any String :: ");
        scanf("%s",str);
        printf("\nUsing Iteration :: \n\n");
        Permute1(str,str);
        printf("\n\n");
        printf("\nUsing Recursion :: \n\n");
        Permute2(str,0,strlen(str)-1);

        printf("\n");

        return 0;
}

//--------------Iteration---------------------

void Permute1(char str[], char* currentptr)
{
        char *ptr;
        if( *(currentptr + 1) == '\0')
           printf("%s\t", str);
        else
        for(ptr=currentptr; *ptr!='\0'; ptr++)
    {
                Swap(ptr,currentptr);
                Permute1(str, currentptr+1);
                Swap(ptr,currentptr);
        }
}

//--------------Recursion---------------------

void Permute2(char str[], int startIndex, int lastIndex)
{
        int i;
        if(startIndex==lastIndex)
        {
                for(i=0;i<=lastIndex;i++)
                        printf("%c",str[i]);
                printf("\t");
        }
        else
        for(i=startIndex;i<=lastIndex;i++)
        {
                Swap(&str[startIndex], &str[i]);
                Permute2(str,startIndex+1,lastIndex);
                Swap(&str[startIndex], &str[i]);
        }
}


void Swap(char *a, char *b)
{
        char temp = *a;  *a=*b; *b=temp;
}