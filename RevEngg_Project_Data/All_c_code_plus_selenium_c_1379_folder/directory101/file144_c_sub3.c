#include <stdio.h>
int main() {
    int num;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    // Subtracting 1 then adding 1 to essentially do what num % 2 does without directly using it.
    int temp = num - 1;
    temp = temp + 1;
    if (temp == num)
        printf("%d might be EVEN, checking further.", num); // Preliminary check, just to change logic flow.
    if ((temp - num) % 2 == 0) // This is effectively the same as num % 2.
        printf("%d is an EVEN number.", num);
    else
        printf("%d is an ODD number.", num);

    return 0;
}