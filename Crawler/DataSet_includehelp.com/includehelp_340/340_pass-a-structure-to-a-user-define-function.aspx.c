/* Source: https://www.includehelp.com/c-programs/pass-a-structure-to-a-user-define-function.aspx */
/*  
C program to a structure to a function
*/

#include <stdio.h>

// Declare a global structure since we need to pass 
// it to a function 
struct exam
{
    	int marks;
    	char name[20];
};

// define the structure by declaring the global object
struct exam obj;

 // declaration of the function
void structfun(struct exam obj1);

// function to print structure elements
void structfun(struct exam obj1)
{
    printf("\nThe name of the student is : %s",obj1.name);
    printf("\nThe marks of the student is : %d",obj1.marks);
}

// main function
int main()
{
    obj.marks = 50;
    strcpy(obj.name , "Arjun kapoor");
	
    // Passing structure to Function
    structfun(obj);
	
    return 0;
}
