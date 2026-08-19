#include<stdio.h>

int main() {
    int x = 30;
    float y = 40.5;
    int x_increment = 10;
    float y_decrement = 5.5;

    // Calculating new values
    int new_x = x + x_increment;
    float new_y = y - y_decrement;

    // Displaying values
    printf("x before increment: %d\n", x);
    printf("x after increment: %d\n", new_x);
    printf("y before decrement: %f\n", y);
    printf("y after decrement: %f\n", new_y);

    return 0;
}