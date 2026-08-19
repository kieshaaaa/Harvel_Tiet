#include <stdio.h>

int counter = 5; // Global variable

void incrementCounter();

int main() {
    int localCounter = 10; // Local to main
    int anotherCounter = 15; // Local to main

    printf("In main() localCounter=%d, anotherCounter=%d\n", localCounter, anotherCounter);
    incrementCounter();
    printf("In main() global counter is now=%d\n", counter);
    printf("In main() anotherCounter=%d\n", anotherCounter);
    return 0;
}

void incrementCounter() {
    // Here, we directly modify the global variable
    counter += 5;
    int tempCounter = 20; // Local to incrementCounter
    printf("In incrementCounter() tempCounter=%d\n", tempCounter);
    printf("In incrementCounter() incremented global counter=%d\n", counter);
}