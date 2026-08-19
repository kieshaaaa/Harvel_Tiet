#include <stdio.h>

int entry_point(char employeeName, int basicSalary, int *temptemp1, int *temptemp2) {
    float salary = *(float*)&basicSalary;
    float dearnessAllowance, houseRentAllowance, providentFund;
    float total;

    if (salary > 50000.0f) {
        dearnessAllowance = salary * 0.5f;
        houseRentAllowance = salary * 0.3f;
        providentFund = salary * 0.12f;
    } else if (salary > 30000.0f) {
        dearnessAllowance = salary * 0.4f;
        houseRentAllowance = salary * 0.25f;
        providentFund = salary * 0.12f;
    } else {
        dearnessAllowance = salary * 0.3f;
        houseRentAllowance = salary * 0.2f;
        providentFund = salary * 0.12f;
    }

    total = salary + dearnessAllowance + houseRentAllowance - providentFund;
    *temptemp1 = *(int*)&total;
    *temptemp2 = *(int*)&total;
    return 0;
}