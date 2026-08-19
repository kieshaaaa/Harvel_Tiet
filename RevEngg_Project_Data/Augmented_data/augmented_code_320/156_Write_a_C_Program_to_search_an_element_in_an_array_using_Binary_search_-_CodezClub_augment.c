/* Source: https://www.codezclub.com/c-program-to-search-element-using-binary-search/ */
/*  C Program to search an element in an array using Binary search  */

#include <stdio.h>
int main(){
   int j, first, last, middle, n, search, arr[100];
   printf("Enter number of elements :: ");
   scanf("%d",&n);
   printf("\nEnter %d integers :: \n", n);
   j = 0;
   while ( j < n )
   {
       printf("\nEnter %d value :: ", j+1);
       scanf("%d",&arr[j]);
       j++;
   }

   printf("\nEnter value to search :: ");
   scanf("%d",&search);
    first = 0;
   last = n - 1;
   middle = (first+last)/2;
    
   while( first <= last ){
        if ( arr[middle] < search )
                first = middle + 1;
        else if ( arr[middle] == search ) {
                printf("\n %d found at location %d.\n", search, middle+1);
                break;
        }
        else
                last = middle - 1;
        middle = (first + last)/2;
   }
   if ( first > last )
      printf("Not found! %d is not present in the list.\n", search);
return 0;
}