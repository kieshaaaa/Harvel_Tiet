/* Source: https://www.includehelp.com/c-programs/c-program-to-read-and-print-one-dimensional-array.aspx */
/*Program to read and print one dimensional array. */
 
#include <stdio.h>
 
/** funtion :   readArray() 
    input   :   arr ( array of integer ), size 
    to read ONE-D integer array from standard input device (keyboard). 
**/
void readArray(int arr[], int size) 
{ 
    int i =0; 
 
    printf("\nEnter elements : \n"); 
 
    for(i=0; i<size; i++) 
    { 
        printf("Enter arr[%d] : ",i); 
        scanf("%d",&arr[i]); 
    } 
} 
 
/** funtion :   printArray() 
    input   :   arr ( array of integer ), size 
    to display ONE-D integer array on standard output device (moniter). 
**/
void printArray(int arr[],int size) 
{ 
    int i =0; 
 
    printf("\nElements are : "); 
 
    for(i=0; i<size; i++) 
    { 
        printf("\n\tarr[%d] : %d",i,arr[i]); 
    } 
    printf("\n"); 
} 
 
int main() 
{ 
    int arr[10]; 
 
    readArray(arr,10); 
    printArray(arr,10); 
 
    return 0; 
}
