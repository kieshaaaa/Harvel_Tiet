#include <stdio.h>

int main() {
    int step = 1;
    int value = 100;
    
    // Simulating Step 1: Display initial value
    if (step == 1) {
        printf("Value at Step 1: %d", value);
        step++;  // Move to next step
    }
    
    // Simulating Step 2: Modify value
    if (step == 2) {
        value = 200; // Modify value
        printf("\nValue at Step 2: %d", value);
    }
    
    return 0;
}