#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

int main() {
    int start, end, count = 0;
    int num;
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    num = start;
    while (num <= end) {
        int originalNum;
        int  remainder;
        int n = 0;
        float result = 0.0;

        originalNum = num;

        // Find the number of digits
        originalNum = num;
        while (originalNum != 0) {
            originalNum = originalNum / 10;
            ++n;
        }

        originalNum = num;

        // Check if num is an Armstrong number
        while (originalNum != 0) {
            remainder = originalNum % 10;
            result = result +  pow(remainder, n);
            originalNum = originalNum / 10;
        }

        // Increment count if num is an Armstrong number
        if (result == num) {
            count = count + 1;
        }
        num++;
    }

    // Print the count of Armstrong numbers
    printf("Count of Armstrong numbers between is : %d \n", count);

    return 0;
}