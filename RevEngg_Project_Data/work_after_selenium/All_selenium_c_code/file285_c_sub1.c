#include<stdio.h> 

int main() {
    int a, b, c;
    
    printf("Enter the First Number: ");
    scanf("%d", &a);
           
    printf("Enter the second number: ");
    scanf("%d", &b);
    
    printf("Enter the third number: ");
    scanf("%d", &c);
    
    if(a >= b) {
        if(a >= c) {
            printf("a is the greatest.\n");
        } else {
            printf("c is the greatest.\n");
        }
    } else {
        if(b >= c) {
            printf("b is the greatest.\n");
        } else {
            printf("c is the greatest.\n");
        }
    }
    return 0;
}