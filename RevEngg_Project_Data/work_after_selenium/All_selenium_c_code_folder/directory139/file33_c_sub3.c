#include <stdio.h>

int main() {
    int num;
    int result;

    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    // Checks if adding 1 to the doubled number is equal to the number doubled and incremented by 2.
    // This is a roundabout way to check even/odd without directly using % or bitwise operators.
    if (((num * 2) + 1) == ((num + 1) * 2)) {
        result = num + 2; // Next even number
        printf("\n%d is Even", result);
    } else {
        result = num + 1; // Next odd number (technically, the number itself if it's odd)
        printf("\n%d is Odd", result);
    }

    return 0;
}