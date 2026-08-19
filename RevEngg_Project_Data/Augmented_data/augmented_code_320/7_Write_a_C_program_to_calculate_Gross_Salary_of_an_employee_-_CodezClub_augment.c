/* Source: https://www.codezclub.com/c-calculate-gross-salary-of-employee/ */
/*  C program to calculate Gross Salary of an employee  */

#include <stdio.h>
 
int main()
{
  
    char employeeName[30];
    float basicSalary, houseRentAllowance, dearnessAllowance, providentFund, grossSalary;
 
    printf("Enter name: ");
    gets(employeeName);
 
    printf("Enter Basic Salary: ");
    scanf("%f",&basicSalary);
    printf("Enter HRA: ");
    scanf("%f",&houseRentAllowance);
    printf("Enter D.A.: ");
    scanf("%f",&dearnessAllowance);
     
    /*pf automatic calculated 12%*/
    providentFund= (basicSalary*12)/100;
 
    grossSalary=basicSalary+dearnessAllowance+houseRentAllowance+providentFund;
 
    printf("\nName: %s \nBASIC: %f \nHRA: %f \nDA: %f \nPF: %f \n***GROSS SALARY: %f ***",employeeName,basicSalary,houseRentAllowance,dearnessAllowance,providentFund,grossSalary);
     
    return 0;
}