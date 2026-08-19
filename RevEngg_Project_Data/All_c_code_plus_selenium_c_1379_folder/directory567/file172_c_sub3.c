#include <stdio.h>

int main() {
    char name[20];
    int age, isEligibleForConcession = 0;
    float price = 600.0f;
    
    printf("Enter your name: ");
    scanf("%s", name);
    
    printf("Enter your age: ");
    scanf("%d", &age);
    
    if (age < 6 || age >= 60) {
        isEligibleForConcession = 1; // Marking eligibility for concession
    }
    
    if (isEligibleForConcession) {
        price *= 0.7f; // Applying concession if eligible
        printf("You are eligible for the concession!!\n");
    }
    
    printf("Your Ticket is Booked\n");
    printf("Your ticket price is %.2f\n\n", price);
    
    return 0;
}