#include <stdio.h>

int entry_point(int (*n), int (*array), int (*search), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5)){
int middle;
int last;
int first;
int i;
;
{
(*temptemp1) = (*n) ;
;
}
 for ( i = 0 ; i < (*n) ; i++ )
 {
{
(*temptemp2) = i+1 ;
;
}
 }
;
 first = 0;
 last = (*n) - 1;
 middle = (first+last)/2;
 while( first <= last ){
 if ( array[middle] < (*search) )
 first = middle + 1;
 else if ( array[middle] == (*search) ) {
{
(*temptemp3) = (*search) ;
(*temptemp4) = middle+1 ;
;
}
 break;
 }
 else
 last = middle - 1;
 middle = (first + last)/2;
 }
 if ( first > last )
{
(*temptemp5) = (*search) ;
;
}
return 0;
}
