/* Source: https://www.codezclub.com/c-program-for-floyds-triangle/ */
/*  C program to Print Floyd’s triangle using While Loop  */

#include<stdio.h>

int main(){

  int rows, cols, num, count=1;

  printf("Enter the range: ");
  scanf("%d",&rows);

  printf("\nFLOYD'S TRIANGLE :: \n\n");
  int i = 1;
  while(i <= rows){
      int j = 1;
      while(j <= i){
           printf(" %d",count);
           j++;
           count++;
      }
      printf("\n");
      i++;
  }

  return 0;
}