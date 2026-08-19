/* Source: https://www.includehelp.com/c-programs/pass-multiple-type-of-arguments-to-a-function.aspx */
/*  
* C program to a pass multiple arguments of different 
* types to a function
*/

#include <stdio.h>

// function to print the argumnets of different types
void simpleFun(int rollno , char *name , float marks)
{
   printf("\nName is : %s",name);
   printf("\nRoll No. is : %d",rollno);
   
   // Here ".02f" denotes that we need only two places 
   // after the decimal
   printf("\nMarks are : %f OR Marks are : %.02f",marks,marks);
}

// main function
int main()
{
    int Roll = 100;
    float marks = 50.5;
    char name[20] = "Ram srivastav";
    
    // Passing these values to Function
    simpleFun(Roll , name , marks);
	
    return 0;
}
