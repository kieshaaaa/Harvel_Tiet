#include <stdio.h>

int main() {
    int n, nthOdd = -1;
    
    for(int i = 0; i < 1; i++) {
        printf("Enter n to find the nth odd number: ");
        scanf("%d", &n);
        
        nthOdd = 2 * n - 1;
    }
    
    printf("The ");
    printf("%d", n);
    printf("th odd number is: ");
    printf("%d\n", nthOdd);
    
    return 0;
}