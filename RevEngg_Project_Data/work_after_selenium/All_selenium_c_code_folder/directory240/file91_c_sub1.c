#include <stdio.h>

int main() {
    int num;
    printf("\nEnter A Number to Check Whether It is Even or Odd => ");
    scanf("%d", &num);
    
    int isOdd = num % 2;
    
    if (isOdd)
        printf("%d is an Odd Number\n", num);
    else
        printf("%d is an Even Number\n", num);

    return 0;
}