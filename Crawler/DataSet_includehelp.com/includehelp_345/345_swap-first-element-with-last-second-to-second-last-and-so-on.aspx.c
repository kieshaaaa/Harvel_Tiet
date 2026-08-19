/* Source: https://www.includehelp.com/c-programs/swap-first-element-with-last-second-to-second-last-and-so-on.aspx */
/** C program to swap first element with last,
 * second element with second last and so on in
 * an array.
*/

#include <stdio.h>

// function to swap the array elements
void Array_Swap(int *array , int n)
{ 
    // declare some local variables
    int i=0,temp=0;

    for(i=0 ; i<n/2 ; i++)
    {
        temp = array[i];
        array[i] = array[n-i-1];
        array[n-i-1] = temp;
    }
}

// main function
int main()
{
    // declare an int array
    int array_1[30] = {0};
    
    // declare some local variables
    int i=0 ,n=0;
    
    printf("\nEnter the number of elements for the array : ");
    scanf("%d",&n);
   
    printf("\nEnter the elements for array_1..\n");
    for(i=0 ; i<n ; i++)
    {
        printf("array_1[%d] : ",i);
        scanf("%d",&array_1[i]);
    }
    
    // Sort the array in ascending ordder
    Array_Swap(array_1 , n);

    printf("\nThe array after swap is..\n");
    for(i=0 ; i<n ; i++)
    {
        printf("\narray_1[%d] : %d",i,array_1[i]);
    }
    
    return 0;
}
