#include <stdio.h>
#include <math.h>

int main() {
    int lowerBound, upperBound, counter, temp, num, remainder, nDigits;
    int sumOfPowers;
    printf("Enter the lower bound: ");
    scanf("%d", &lowerBound);
    printf("Enter the upper bound: ");
    scanf("%d", &upperBound);

    printf("Armstrong numbers between %d and %d are:\n", lowerBound, upperBound);
    counter = lowerBound;
    while(counter <= upperBound) {
        temp = counter;
        num = counter;
        nDigits = 0;
        
        // Calculate the number of digits in counter
        while (temp != 0) {
            temp = temp / 10;
            nDigits = nDigits + 1;
        }
        
        // Reset temp to original number
        temp = counter;
        sumOfPowers = 0;
        
        // Calculate the sum of the nth powers of its digits
        while (temp != 0) {
            remainder = temp % 10;
            sumOfPowers = sumOfPowers + pow(remainder, nDigits);
            temp = temp / 10; // Corrected this line
        }
        
        // Check if the sum is equal to the original number
        if(sumOfPowers == num) {
            printf("%d\n", counter);
        }
        counter++;
    }

    return 0;
}