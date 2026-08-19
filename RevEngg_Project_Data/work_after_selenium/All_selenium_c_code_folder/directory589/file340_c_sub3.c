#include <stdio.h>

int main() {
    char name[30];
    float basic;

    printf("Enter employee name, Basic Salary, House Rent Allowance, Dearness Allowance (separated by spaces): ");
    scanf("%[^\n]%*c %f %f %f", name, &basic, &hra, &da);

    float pf = basic * 0.12;
    float gross = basic + hra + da + pf;

    printf("\nEmployee Name: %s\n", name);
    printf("Gross Salary: %.2f\n", gross);

    return 0;
}