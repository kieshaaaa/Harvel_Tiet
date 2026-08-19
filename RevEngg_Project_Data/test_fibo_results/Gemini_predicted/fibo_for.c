#include <stdio.h>
#include <stdint.h>

int entry_point ( int n , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) ) {
  int i ;
  int t1 ;
  int t2 ;
  int next ;
  t1 = 0 ;
  t2 = 1 ;
  if ( n > 0 ) {
    for ( i = 1 ; i <= n ; i++ ) {
      next = t1 + t2 ;
      t1 = t2 ;
      t2 = next ;
    }
  }
  *temptemp1 = t1 ;
  *temptemp2 = t2 ;
  *temptemp3 = t2 ;
  return 0 ;
}
