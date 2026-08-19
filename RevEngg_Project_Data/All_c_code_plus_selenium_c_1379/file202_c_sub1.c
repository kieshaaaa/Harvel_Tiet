#include <stdio.h>

int main() {
    int n, i, nthEven = 0;
    
    printf("Enter n to find the nth even number: ");
    scanf("%d", &n);
    
    for (i = 1; i <= n; i++) {
        nthEven += 2;
    }
    
    printf("The nth even number is: ");
    printf("%d\n", nthEven);
    
    return 0;
}