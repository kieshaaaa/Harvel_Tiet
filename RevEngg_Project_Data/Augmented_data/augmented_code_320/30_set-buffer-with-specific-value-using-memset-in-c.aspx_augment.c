/* Source: https://www.includehelp.com/c-programs/../code-snippets/set-buffer-with-specific-value-using-memset-in-c.aspx */
/*Set buffer with specific value using memset in C - 
Example of memset()*/
 
#include <stdio.h>
#include <string.h>
 
 
int main()
{
    unsigned char data[10]={0};
    int j;
     
    printf("data: %s\n",data);
     
    //set value with space
    memset(data,' ', 9);  //last byte should be null
    printf("data (memset with space): %s",data); printf(".\n");
 
    //set value with 'x'
    memset(data,'x', 9);  //last byte should be null
    printf("data (memset with x): %s",data); printf(".\n"); 
 
    //set value with value 15
    memset(data,15, 9);   //last byte should be null
    printf("data (memset with value 15): %s",data); printf(".\n");      
    printf("data (memset with value 15 printing integer values:\n*** LAST VALUE WILL BE NULL ***):\n");
    j=0;
    while(j<10){
        printf("%02d ",data[j]);
        j++;
    }
    printf(".\n");
     
    return 0;
}