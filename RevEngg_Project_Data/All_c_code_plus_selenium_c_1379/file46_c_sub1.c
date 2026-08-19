#include <stdio.h>

int main() {
    int num;
    long int fact = 1;
  
    printf("Enter an integer number: ");
    scanf("%d", &num);
  
    int i = num;
    while(i >= 1) {
        fact *= i;
        i--;
    }
  
    printf("\nFactorial of %d is = %ld", num, fact);
  
    return 0;
}