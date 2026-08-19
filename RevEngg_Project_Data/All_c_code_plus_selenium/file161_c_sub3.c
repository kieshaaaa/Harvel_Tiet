#include<stdio.h>

int main() {
    float basic, da, hra, pf, gross, net, tax;
    char name[40];

    printf("Enter your name: ");
    scanf("%s", name);

    printf("\nEnter the basic salary: ");
    scanf("%f", &basic);

    pf = 0.08 * basic;
    da = (basic >= 10000) ? 0.5 * basic : ((basic >= 5000) ? 0.4 * basic : 0.3 * basic);
    hra = (basic >= 10000) ? 0.2 * basic : ((basic >= 5000) ? 0.1 * basic : 0.08 * basic);

    gross = basic + da + hra;

    tax = 0.07 * gross; // Another example tax rate

    net = gross - tax - pf;

    printf("\nThe gross salary is: %f", gross);
    printf("\nThe net salary is: %f", net);

    return 0;
}