#include <stdio.h>

int x = 50; // Global variable

void display();

int main() {
    int x = 25; // Local to main
    int y = 35; // Local to main

    printf("In main() x=%d, y=%d\n", x, y);
    display();
    printf("Back in main() y=%d\n", y);
    return 0;
}

void display() {
    int y = 45; // Local to display

    printf("In display() x=%d\n", x);
    printf("In display() y=%d\n", y);
}