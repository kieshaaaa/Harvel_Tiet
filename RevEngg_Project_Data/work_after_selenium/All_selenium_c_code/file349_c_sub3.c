#include<stdio.h>

int main() {
    int age, isEligible;
    printf("Enter your age: ");
    scanf("%d", &age);

    if(age >= 18) {
        isEligible = 1; // True for eligibility
    } else {
        isEligible = 0; // False for non-eligibility
    }

    if(isEligible == 1) {
        printf("Eligible to Vote.\n");
    } else {
        printf("Not Eligible to Vote.\n");
    }

    return 0;
}