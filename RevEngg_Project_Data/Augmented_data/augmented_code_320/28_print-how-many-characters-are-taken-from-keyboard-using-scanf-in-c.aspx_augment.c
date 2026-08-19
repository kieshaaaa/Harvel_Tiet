/* Source: https://www.includehelp.com/c-programs/../code-snippets/print-how-many-characters-are-taken-from-keyboard-using-scanf-in-c.aspx */
/*C - Print How Many Inputs are Taken from 
Keyboard using Scanf in C Progra.*/
 
#include <stdio.h>
 
int main(){
    int counter=0;
    int input; 
    int values[100],i=0;
     
    i = 0;
    while(input!=-1){
        printf("Enter an integer number (-1 to exit): ");
        counter+=scanf("%d",&input);
        values[i++]=input;
    }
     
    printf("\nTotal Inputs (including 0) are: %d\n",counter);
    printf("Entered numbers are:\n");
    i = 0;
    while(i < counter){
        printf("%d ",values[i]);
        i++;
    }
     
    printf("\n");
    return 0;       
}