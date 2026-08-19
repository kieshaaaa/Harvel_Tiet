/* Source: https://www.includehelp.com/c-programs/../code-snippets/calculate-employee-and-employer-provident-fund-using-c-program.aspx */
/*C - Calculate Employee and Employer 
Provident Fund using C Program.*/
 
#include <stdio.h>
 
#define EMPLOYEE_PERCENTAGE 12.5f
#define EMPLOYER_PERCENTAGE 12.0f
 
int main(){
    float salary;
    float empContrib,emplyrContrib;
     
    printf("Enter basic pay: ");
    scanf("%f",&salary);
     
    empContrib=(salary/100)*EMPLOYEE_PERCENTAGE;
    emplyrContrib=(salary/100)*EMPLOYER_PERCENTAGE;
     
    printf("Basic Pay: %f\n",salary);
    printf("Employee contribution: %f\n",empContrib);
    printf("Employer Contribution: %f\n",emplyrContrib);
     
    return 0;   
}