#include <stdio.h>

int g=5; // global variable

void test();
void showcase();

int main() {
    int g=10; // local to main
    int h=20; // local to main

    printf("In main()  g=%d, h=%d\n", g, h);
    test();
    showcase();
    printf("In main() after calling test() and showcase() ~ h=%d\n", h);
    return 0;
}

void test() {
    int h=30; // local to test

    printf("In test()  g= %d\n", g);
    printf("In test()  h= %d\n", h);
}

void showcase() {
    int i=50; // local to showcase
    printf("In showcase()  g= %d\n", g);
    printf("In showcase()  i= %d\n", i);
}