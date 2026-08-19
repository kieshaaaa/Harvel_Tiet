#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end;
    int counter;
    // Ask the user to input the starting and ending numbers
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    printf("Odd numbers between %d to %d \n", start, end);

    for (counter = start; counter <= end; counter++) {
        // Check if the number is odd
        if (counter % 2 == 1) {
            printf("%d ", counter); // Print the odd number
        }
    }


    return 0;
}
