#include<stdio.h>

int main() {
    float basic, gross, net;
    float da, hra, pf, tax;
    char name[40];

    printf("Enter your name: ");
    scanf("%s", name);

    printf("\nEnter the basic salary: ");
    scanf("%f", &basic);

    pf = basic * 0.08;

    if (basic < 5000) {
        da = basic * 0.3;
        hra = basic * 0.08;
    } else {
        da = basic < 10000 ? basic * 0.4 : basic * 0.5;
        hra = basic < 10000 ? basic * 0.1 : basic * 0.2;
    }

    gross = basic + da + hra;

    tax = gross * 0.05; // Changed tax rate for variety

    net = gross - tax - pf;

    printf("\nThe gross salary is: %f", gross);
    printf("\nThe net salary is: %f", net);

    return 0;
}