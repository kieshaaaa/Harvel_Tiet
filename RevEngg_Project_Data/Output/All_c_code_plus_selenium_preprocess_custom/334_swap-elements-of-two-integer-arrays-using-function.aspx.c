#include <stdio.h>

void swapElements(int *arr1 , int *arr2 , int n)
{
 int i=0,temp=0;
 for(i=0 ; i<n ; i++)
 {
 temp = arr1[i];
 arr1[i] = arr2[i];
 arr2[i] = temp;
 }
}
int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int i=0;
 int array_1[6] = {0,1,2,3,4};
 int array_2[6] = {5,6,7,8,9};
 swapElements(array_1,array_2,5);
;
 for(i=0 ; i<5 ; i++)
 {
{
(*temptemp1) = i ;
(*temptemp2) = array_1[i] ;
;
}
 }
;
 for(i=0 ; i<5 ; i++)
 {
{
(*temptemp3) = i ;
(*temptemp4) = array_2[i] ;
;
}
 }
 return 0;
}
