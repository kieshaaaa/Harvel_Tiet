#include <stdio.h>

int main() {
    int n, counter = 0, i = 1, nthOdd = 0;
    
    printf("Enter n to find the nth odd number: ");
    scanf("%d", &n);
    
    while(counter < n) {
        if(i % 2 != 0) {
            nthOdd = i;
            counter++;
        }
        i++;
    }
    
    printf("The ");
    printf("%d", n);
    printf("th odd number is: ");
    printf("%d\n", nthOdd);
    
    return 0;
}