#include <stdio.h>

int main() {
    char name[20];
    int age;
    float price = 600.0f; // Original ticket price
    
    printf("Enter your name: ");
    scanf("%s", name);
    
    printf("Enter your age: ");
    scanf("%d", &age);
    
    if (age < 6 || age >= 60) {
        price = 420.0f; // Directly setting the discounted price
        printf("You are eligible for the concession!!\n");
    }
    
    printf("Your Ticket is Booked\n");
    printf("Your ticket price is %.2f\n\n", price);
    
    return 0;
}