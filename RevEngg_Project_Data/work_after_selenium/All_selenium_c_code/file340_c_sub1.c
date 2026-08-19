#include <stdio.h>

int main() {
    char name[30];
    float basic, hra, da, gross, pf;

    printf("Enter employee name: ");
    fgets(name, 30, stdin); // Using fgets to avoid potential buffer overflow

    printf("Enter Basic Salary: ");
    scanf("%f", &basic);

    printf("Enter House Rent Allowance: ");
    scanf("%f", &hra);

    printf("Enter Dearness Allowance: ");
    scanf("%f", &da);

    // Calculate Provident Fund at 12% of Basic Salary
    pf = basic * 0.12;

    // Calculate Gross Salary
    gross = basic + hra + da + pf;

    printf("\nEmployee Name: %s", name);
    printf("Basic Salary: %.2f\n", basic);
    printf("HRA: %.2f\n", hra);
    printf("DA: %.2f\n", da);
    printf("PF: %.2f\n", pf);
    printf("Gross Salary: %.2f\n", gross);

    return 0;
}