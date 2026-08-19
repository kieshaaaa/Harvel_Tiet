#include <stdio.h>

int entry_point(char (*employeeName), int basicSalary, int (*temptemp1), int (*temptemp2)) {
    float providentFund;
    float houseRentAllowance;
    float dearnessAllowance;
    float grossSalary;

    providentFund = (float)basicSalary * 0.12f;
    houseRentAllowance = (float)basicSalary * 0.40f;
    dearnessAllowance = (float)basicSalary * 0.15f;

    grossSalary = (float)basicSalary + providentFund + houseRentAllowance + dearnessAllowance;

    *temptemp1 = (int)grossSalary;
    *temptemp2 = (int)providentFund;

    return 0;
}