#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end, a, b, sum;
    int numPerfect ; 

    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    numPerfect = 0;
    a = start;
    while (a <= end) {
        sum = 0; 
        b = 1;
        while (b <= a / 2) {
            if (a % b == 0) {
                sum = sum + b; 
            }
            b++;
        }

        if (sum == a && a != 0) {
            numPerfect++; 
        }
        a++;
    }

    printf("Count of perfect numbers between is : %d \n", numPerfect);

    return 0;
}