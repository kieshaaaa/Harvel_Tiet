/* Source: https://www.includehelp.com/c-programs/pass-an-array-of-structures-structure-to-a-user-define-function.aspx */
/*  
C program to pass an arrays of structures
to a function
*/

#include <stdio.h>

// Declare a global structure since we need to pass 
// it to a function 
struct exam
{
    int roll;
    int marks;
    char name[20];
};

// array of structure object
struct exam obj[2];

 // declaration of the function
void structfun(struct exam *obj);

// function to print structure elements switch
// two different objects
void structfun(struct exam *obj)
{
    //Values using the object 1
    printf("\nName is : %s",obj[0].name);
    printf("\nRoll No. is : %d",obj[0].roll);
    printf("\nMarks are : %d",obj[0].marks);
    
    printf("\n");
    
    // Values using the object 2
    printf("\nName is : %s",obj[1].name);
    printf("\nRoll No. is : %d",obj[1].roll);
    printf("\nMarks are : %d",obj[1].marks);
}

// main function
int main()
{
    // assign values using the object 1
    obj[0].marks = 35;
    obj[0].roll = 10;
    strcpy(obj[0].name , "Arjun kapoor");
	
    // assign values using the object 1
    obj[1].marks = 75;
    obj[1].roll = 11;
    strcpy(obj[1].name , "Balram chauhan");
    
    // Passing structure to Function
    structfun(obj);
	
    return 0;
}
