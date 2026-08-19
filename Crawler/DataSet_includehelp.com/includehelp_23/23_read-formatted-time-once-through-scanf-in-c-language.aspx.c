/* Source: https://www.includehelp.com/c-programs/../code-snippets/read-formatted-time-once-through-scanf-in-c-language.aspx */
/*C - Read Formatted Time Once through Scanf in C Language.*/
 
#include <stdio.h>
 
int main(){
    int hour,minute,second;
     
    printf("Enter time (in HH:MM:SS) ");
    scanf("%02d:%02d:%02d",&hour,&minute,&second);
     
    printf("Entered time is  %02d:%02d:%02d\n",hour, minute, second);
     
    return 0;   
}
