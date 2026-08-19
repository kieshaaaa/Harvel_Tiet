/* Source: https://www.codezclub.com/c-count-number-of-vowels-in-string/ */
/*  C Program to Count Number of Vowels in a string  */

#include<stdio.h>
int main()
{
    char line[150];
    int i,v,c,ch,d,s,o;
    o=v=c=ch=d=s=0;

    printf("\nEnter any String :: ");
    gets(line);

    for(i=0;line[i]!='\0';++i)
    {
        if(line[i]=='a' || line[i]=='e' || line[i]=='i' || line[i]=='o' || line[i]=='u' || line[i]=='A' || line[i]=='E' || line[i]=='I' || line[i]=='O' || line[i]=='U')
            ++v;
        else if((line[i]>='a'&& line[i]<='z') || (line[i]>='A'&& line[i]<='Z'))
            ++c;
        else if(line[i]>='0'&& line[i]<='9')
            ++d;
        else if (line[i]==' ')
            ++s;
    }
    printf("\nNumber of Vowels :: [ %d ]\n",v);
    printf("\nNumber of Consonants :: [ %d ]\n",c);
    printf("\nNumber of Digits :: [ %d ]\n",d);
    printf("\nNumber of White spaces :: [ %d ]\n",s);

    return 0;
}