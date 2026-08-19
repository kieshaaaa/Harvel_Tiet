#include<stdio.h>

int main() {
    float basic, da, hra, pf, gross, net, tax;
    char name[50];

    printf("Enter your name: ");
    scanf("%s", name);

    printf("\nEnter the basic salary: ");
    scanf("%f", &basic);

    pf = basic * 0.08;

    da = basic < 5000 ? basic * 0.3 : (basic < 10000 ? basic * 0.4 : basic * 0.5);
    hra = basic < 5000 ? basic * 0.08 : (basic < 10000 ? basic * 0.1 : basic * 0.2);

    gross = basic + da + hra;

    // Assuming tax calculation needs to be added
    tax = gross * 0.1; // Example tax rate of 10%

    net = gross - tax - pf;

    printf("\nThe gross salary is: %f", gross);
    printf("\nThe net salary is: %f", net);

    return 0;
}