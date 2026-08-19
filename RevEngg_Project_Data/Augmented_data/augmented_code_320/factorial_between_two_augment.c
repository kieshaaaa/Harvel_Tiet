#include <stdio.h>

int factorial_calc(int num) {
    int res = 1;
    int i = 2;
    while (i <= num) {
        res *= i;
        if (res < 0) {
            return -1; 
        }
        i++;
    }
    return res;
}

int main() {
    int lower_bound, upper_bound;
    int j;
    printf("Enter the lower bound: ");
    scanf("%d", &lower_bound);
    printf("Enter the upper bound: ");
    scanf("%d", &upper_bound);

    j = lower_bound;
    while(j <= upper_bound && j >= 0) {
        int fact = factorial_calc(j);
        if(fact <= upper_bound && fact > 0) {
            printf("Factorial of %d is %d\n", j, fact);
        } else {
            break;
        }
        j++;
    }

    return 0;
}