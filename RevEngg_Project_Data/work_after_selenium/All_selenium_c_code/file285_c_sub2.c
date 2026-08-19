#include<stdio.h> 

int main() {
    int a, b, c, largest;
    
    printf("Enter the First Number: ");
    scanf("%d", &a);
           
    printf("Enter the second number: ");
    scanf("%d", &b);
    
    printf("Enter the third number: ");
    scanf("%d", &c);
    
    if((a >= b && a >= c) || (a == b && a == c)) {
        largest = a;
    } else if(b >= a && b >= c) {
        largest = b;
    } else {
        largest = c;
    }
    
    printf("%d is the greatest.\n", largest);
    
    return 0;
}