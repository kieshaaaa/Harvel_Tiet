#include <stdio.h>

int x=15; // global variable

void display();

int main() {
    int x=25; // local to main
    int y=35; // local to main

    printf("In main()  x=%d, y=%d\n", x, y);
    display();
    printf("In main() after calling display() ~ y=%d\n", y);
    return 0;
}

void display() {
    int y=45; // local to display

    printf("In display()  x= %d\n", x);
    printf("In display()  y= %d\n", y);
}