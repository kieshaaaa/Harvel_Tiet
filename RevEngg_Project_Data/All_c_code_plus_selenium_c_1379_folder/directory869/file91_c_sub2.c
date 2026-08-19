#include <stdio.h>

int main() {
    int num;
    printf("\nEnter A Number to Check Whether It is Even or Odd => ");
    scanf("%d", &num);
    
    int result = (num ^ 1) & 1;
    
    if (result == 0)
        printf("%d is an Odd Number\n", num);
    else
        printf("%d is an Even Number\n", num);

    return 0;
}