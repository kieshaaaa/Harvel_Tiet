/* Source: https://www.includehelp.com/c-programs/user-define-function-example-with-no-argument-and-no-return-type.aspx */
/*  
User define function example with no argument 
and no return type 
*/

#include <stdio.h>


void fun1(void)
{
  int array[10]={1,2,3,4,5,6};
  int i=0,sum=0;
  
  for(i=0;i<6;i++)
  {
      sum = sum + array[i];
  }
  
  printf("\nThe sum of all array elements is : %d",sum);
}

// main function
int main()
{
  //calling the function
  fun1();
  
  return 0;
}
