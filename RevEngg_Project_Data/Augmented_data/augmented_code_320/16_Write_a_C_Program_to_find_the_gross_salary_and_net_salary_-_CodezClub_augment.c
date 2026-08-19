/* Source: https://www.codezclub.com/c-find-gross-and-net-salary/ */
/*  C Program to find the gross salary and net salary  */

#include <stdio.h>
int main()
{
    float basicSalary, dearnessAllowance, houseRentAllowance, incomeTax, providentFund, grossSalary, netSalary;
    char employeeName[50];

    printf("ENTER YOUR NAME :: ");
    scanf("%s", &employeeName);
    printf("\nENTER THE BASIC SALARY :: ");
    scanf("%f", &basicSalary);

    providentFund = 0.08 * basicSalary;

    if (basicSalary < 5000) {
        dearnessAllowance = 0.3 * basicSalary;
        houseRentAllowance = 0.08 * basicSalary;
    } else if ((basicSalary >= 5000) && (basicSalary < 10000)) {
        dearnessAllowance = 0.4 * basicSalary;
        houseRentAllowance = 0.1 * basicSalary;
    } else {
        dearnessAllowance = 0.5 * basicSalary;
        houseRentAllowance = 0.2 * basicSalary;
    }
    grossSalary = basicSalary + dearnessAllowance + houseRentAllowance;
    netSalary = grossSalary - incomeTax + providentFund;
    printf("\n\nTHE GROSS SALARY IS :: %f", grossSalary);
    printf("\n\nTHE NET SALARY IS :: %f", netSalary);

    return 0;
}