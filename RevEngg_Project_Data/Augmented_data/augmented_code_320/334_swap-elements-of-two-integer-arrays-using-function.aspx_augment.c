/* Source: https://www.includehelp.com/c-programs/swap-elements-of-two-integer-arrays-using-function.aspx */
/*  
* C program to swap elements of two integer arrays
*/

#include <stdio.h>

// funtion to swap the elements of the two arrays
void swapElements(int *arr1 , int *arr2 , int n)
{
    int i=0,temp=0;
    
    i = 0;
    while(i<n)
    {
        temp    = arr1[i];
        arr1[i] = arr2[i];
        arr2[i] = temp;
        i++;
    }
}

// main function
int main()
{
    int i=0;
    
    // define two 1d-arrays
    int array_1[6] = {0,1,2,3,4};
    int array_2[6] = {5,6,7,8,9};
    
    // Passing two arrays and the number of 
    // elements to Function
    swapElements(array_1,array_2,5);
	
    printf("\nThe arrays after swap are..\n");
	
    i=0;
    while(i<5)
    {
        printf("\narra_1 [%d] : %d",i,array_1[i]);
        i++;
    }
    
    printf("\n");
    
    i=0;
    while(i<5)
    {
	printf("\narray_2 [%d] : %d",i,array_2[i]);
        i++;
    }
	
    return 0;
}