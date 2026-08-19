#include<stdio.h> 

int main() {
    int a, b, c, greatest;
    
    printf("Enter the First Number: ");
    scanf("%d", &a);
           
    printf("Enter the second number: ");
    scanf("%d", &b);
    
    printf("Enter the third number: ");
    scanf("%d", &c);
    
    greatest = a; // Assume 'a' is the greatest initially
    
    if(b > greatest) {
        greatest = b; // Update if 'b' is greater
    }
    
    if(c > greatest) {
        greatest = c; // Update if 'c' is greater
    }
    
    printf("%d is the greatest.\n", greatest);
    
    return 0;
}