#include <stdio.h>

int main() {
    int num;
    long int fact = 1;
  
    printf("Enter an integer number: ");
    scanf("%d", &num);
  
    for(int i = num; i > 1; ) {
        fact *= i--;
    }
  
    printf("\nFactorial of %d is = %ld", num, fact);
  
    return 0;
}