#include <stdio.h>
#include <stdlib.h>

int main() {
    int numStart, numEnd;
    int i;
    // Ask the user to input the starting and ending numbers
    printf("Enter the starting number: ");
    scanf("%d", &numStart);
    printf("Enter the ending number: ");
    scanf("%d", &numEnd);

    printf("Even numbers between %d to %d\n", numStart, numEnd);

    i = numStart;
    while (i <= numEnd) {
        // Check if the number is even
        if (i % 2 == 0) {
            printf("%d ", i); // Print the even number
        }
        i++;
    }

    return 0;
}