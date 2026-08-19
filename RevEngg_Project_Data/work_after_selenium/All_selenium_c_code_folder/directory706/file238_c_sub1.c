#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    int i = lower;
    while(i <= upper) {
        int fact = 1;
        int j = 2;
        while(j <= i) {
            fact *= j;
            if (fact < 0) {
                fact = -1;
                break;
            }
            j++;
        }
        if(fact > 0 && fact <= upper) {
            printf("Factorial of %d is %d\n", i, fact);
        } else {
            break;
        }
        i++;
    }
    return 0;
}