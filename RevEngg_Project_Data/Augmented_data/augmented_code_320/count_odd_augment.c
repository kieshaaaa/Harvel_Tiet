#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end;
    int count;
    // Ask the user to input the starting and ending numbers
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    printf("Odd numbers between %d to %d \n", start, end);

    count = start;
    while (count <= end) {
        // Check if the number is odd
        if (count % 2 == 1) {
            printf("%d ", count); // Print the odd number
        }
        count++;
    }


    return 0;
}