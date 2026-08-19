#include <stdio.h>

int main() {
    char name[30];
    float basic, hra, da;

    printf("Enter employee name: ");
    fgets(name, 30, stdin);

    printf("Enter Basic Salary: ");
    scanf("%f", &basic);

    printf("Enter House Rent Allowance: ");
    scanf("%f", &hra);

    printf("Enter Dearness Allowance: ");
    scanf("%f", &da);

    printf("\nEmployee Name: %s", name);
    printf("Gross Salary: %.2f\n", basic + hra + da + (basic * 0.12));

    return 0;
}