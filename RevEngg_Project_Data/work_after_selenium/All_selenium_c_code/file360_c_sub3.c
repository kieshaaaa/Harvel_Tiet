#include <stdio.h>

int main(){
    float basicPay;
    float employeeFund, employerFund;
     
    printf("Enter basic pay: ");
    scanf("%f", &basicPay);
     
    employeeFund = basicPay * 0.125; // Directly using 12.5% as 0.125
    employerFund = basicPay * 0.12; // Directly using 12% as 0.12
     
    printf("Basic Pay: %f\n", basicPay);
    printf("Employee contribution: %f\n", employeeFund);
    printf("Employer Contribution: %f\n", employerFund);
     
    return 0;   
}