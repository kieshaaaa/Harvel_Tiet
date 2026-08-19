#include <stdio.h>

int main() {
    int num;
    
    printf("Enter a number: ");
    scanf("%d", &num);
    
    // Directly initializing the status messages based on conditions
    char *status = num > 0 ? "Positive" : "Negative";
    char *evenOddStatus = (num % 2 == 0) ? "Even" : "Odd";
    
    printf("Number status: %s\n", status);
    printf("Number parity: %s\n", evenOddStatus);
    
    return 0;
}