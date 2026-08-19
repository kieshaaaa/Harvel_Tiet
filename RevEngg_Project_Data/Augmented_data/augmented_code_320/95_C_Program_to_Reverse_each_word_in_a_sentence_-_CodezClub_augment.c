/* Source: https://www.codezclub.com/c-reverse-words-without-reversing-characters/ */
/*  C Program to Reverse each word in a sentence  */

#include <stdio.h>

int main()
{

    char sentence[100],reversedSentence[100];
    int index1=0,index2=0;
    printf("\nEnter any Sentence :: ");
    gets(sentence);

//Character reversing starts
    while(sentence[index1]!='\0')
        index1++;
    while(index1>0)
    {

        reversedSentence[index2]=sentence[--index1];
        ++index2;

    }
    reversedSentence[index2]='\0';
//Character reversing ends
    printf("\nReversed Sentence :: ");

    index1 = 0;
    while(reversedSentence[index1] != '\0') {
        if(reversedSentence[index1+1]==' ' || reversedSentence[index1+1]=='\0')
        {
            for(index2=index1;index2>=0 && reversedSentence[index2]!=' ';index2--)
                printf("%c",reversedSentence[index2]);

            printf(" ");
        }
        index1++;
    }

    return 0;
}