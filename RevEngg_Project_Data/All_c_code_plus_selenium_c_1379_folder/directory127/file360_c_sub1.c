#include <stdio.h>

int main(){
    float basicPay;
    float employeeFund, employerFund;
    float employeePercentage = 12.5f;
    float employerPercentage = 12.0f;
     
    printf("Enter basic pay: ");
    scanf("%f", &basicPay);
     
    employeeFund = (basicPay * employeePercentage) / 100;
    employerFund = (basicPay * employerPercentage) / 100;
     
    printf("Basic Pay: %f\n", basicPay);
    printf("Employee contribution: %f\n", employeeFund);
    printf("Employer Contribution: %f\n", employerFund);
     
    return 0;   
}