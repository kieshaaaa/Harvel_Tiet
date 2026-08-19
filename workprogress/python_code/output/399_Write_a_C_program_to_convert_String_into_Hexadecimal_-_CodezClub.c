/* Source: https://www.codezclub.com/c-convert-string-hexadecimal/ */

#include <stdio.h>

#include <string.h>

 
int entry_point(char* (*strH)) 

{
char (*strH)[200];
char str[100];
int j;
int i;
     
    printf("Enter string: ");
    scanf("%[^\n]s",str);
     
    printf("\nString is: %s\n",str);
     
    /*set (*strH) with nulls*/
    memset((*strH),0,sizeof((*strH)));
     
    /*converting str character into Hex and adding into (*strH)*/
    for(i=0,j=0;i<strlen(str);i++,j+=2)
    { 
        sprintf((char*)(*strH)+j,"%02X",str[i]);
    }
    (*strH)[j]='\0'; /*adding NULL in the end*/
     
    printf("Hexadecimal converted string is: \n");
    printf("%s\n",(*strH));
     
     
    return 0;
}
