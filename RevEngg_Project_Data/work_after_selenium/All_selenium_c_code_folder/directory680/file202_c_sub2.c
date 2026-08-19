#include <stdio.h>

int main() {
    int n, nthEven = 0, counter = 0;
    
    printf("Enter n to find the nth even number: ");
    scanf("%d", &n);
    
    while (counter < n) {
        nthEven += 2;
        counter++;
    }
    
    printf("The nth even number is: ");
    printf("%d\n", nthEven);
    
    return 0;
}