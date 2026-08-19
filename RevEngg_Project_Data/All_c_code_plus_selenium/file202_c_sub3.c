#include <stdio.h>

int main() {
    int n, nthEven;
    float firstTerm = 2, commonDifference = 2;
    
    printf("Enter n to find the nth even number: ");
    scanf("%d", &n);
    
    nthEven = firstTerm + (n - 1) * commonDifference;
    
    printf("The nth even number is: ");
    printf("%d\n", nthEven);
    
    return 0;
}