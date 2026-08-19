#include <stdio.h>

int globalNum = 100; // Global variable

void testFunction();

int main() {
    int localMainNum = 200; // Local to main
    int anotherLocalMainNum = 300; // Local to main

    printf("In main() localMainNum=%d, anotherLocalMainNum=%d\n", localMainNum, anotherLocalMainNum);
    testFunction();
    printf("In main() after calling testFunction() anotherLocalMainNum=%d\n", anotherLocalMainNum);
    return 0;
}

void testFunction() {
    int localTestNum = 400; // Local to testFunction

    printf("In testFunction() globalNum=%d\n", globalNum);
    printf("In testFunction() localTestNum=%d\n", localTestNum);
}