/* Source: https://www.codezclub.com/c-program-for-floyds-triangle/ */
/*  C program to Print Floyd’s triangle using For Loop  */

#include<stdio.h>

int main(){

  int i,j,r,k=1;

  printf("Enter the range: ");
  scanf("%d",&r);

  printf("\nFLOYD'S TRIANGLE :: \n\n");
  for(i=1;i<=r;i++){
      for(j=1;j<=i;j++,k++)
           printf(" %d",k);
      printf("\n");
  }

  return 0;
}