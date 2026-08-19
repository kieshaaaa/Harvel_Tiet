#include <stdio.h>

int main() {
    int nums[3] = {100, 200, 300}; // Initializing array with values

    // Printing initial values
    for (int i = 0; i < 3; i++) {
        printf("\tValue of nums[%d]: %d\n", i, nums[i]);
    }

    // Adding 10 to each value
    for (int i = 0; i < 3; i++) {
        nums[i] += 10;
    }

    printf("\n\tAfter adding 10\n\n");
    // Printing updated values
    for (int i = 0; i < 3; i++) {
        printf("\tValue of nums[%d]: %d\n", i, nums[i]);
    }

    return 0;
}