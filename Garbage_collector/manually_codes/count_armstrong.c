#include <stdio.h>
#include <stdlib.h>
#include <math.h> // Include math library for the pow() function

int main() {
    int start, end, count = 0;
    int num;
    // Ask the user to input the starting and ending numbers
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    for (num = start; num <= end; num++) {
        int originalNum;
        int  remainder;
        int n = 0;
        float result = 0.0;

        originalNum = num;

        // Find the number of digits
        for (originalNum = num; originalNum != 0; ++n) {
            originalNum = originalNum / 10;
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
    }

    // Print the count of Armstrong numbers
    printf("Count of Armstrong numbers between is : %d \n", count);

    return 0;
}
