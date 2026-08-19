#include <stdio.h>

int main() {
    int num;
    long int fact = 1;
  
    printf("Enter an integer number: ");
    scanf("%d", &num);
  
    int i = num;
    if (i > 0) {
        do {
            fact *= i;
            i--;
        } while (i >= 1);
    }
  
    printf("\nFactorial of %d is = %ld", num, fact);
  
    return 0;
}