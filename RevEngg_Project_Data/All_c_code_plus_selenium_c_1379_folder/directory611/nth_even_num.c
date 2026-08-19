#include <stdio.h>

int main() {
    int n, nthEven;
    
    printf("Enter n to find the nth even number: ");
    scanf("%d", &n);
    
    // Calculate the nth even number
    nthEven = 2 * n;
    
    printf("The %dth even number is: %d\n", n, nthEven);
    
    return 0;
}
