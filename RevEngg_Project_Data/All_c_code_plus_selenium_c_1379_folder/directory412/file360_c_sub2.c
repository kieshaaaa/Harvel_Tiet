#include <stdio.h>

#define EMPLOYEE_PERCENTAGE 12.5f
#define EMPLOYER_PERCENTAGE 12.0f

int main(){
    float basicPay;
    float employeePercentage = EMPLOYEE_PERCENTAGE;
    float employerPercentage = EMPLOYER_PERCENTAGE;
     
    printf("Enter basic pay: ");
    scanf("%f", &basicPay);
     
    printf("Basic Pay: %f\n", basicPay);
    printf("Employee contribution: %f\n", (basicPay * employeePercentage) / 100);
    printf("Employer Contribution: %f\n", (basicPay * employerPercentage) / 100);
     
    return 0;   
}