#include <stdio.h>

int a=7; // global variable

void process();

int main() {
    int a=12; // local to main
    int b=22; // local to main
    int sum;

    sum = a + b;
    printf("In main()  a=%d, b=%d, sum=%d\n", a, b, sum);
    process();
    sum = b - a;
    printf("In main() after calling process() ~ sum=%d\n", sum);
    return 0;
}

void process() {
    int b=32; // local to process
    int diff;

    diff = b - a;
    printf("In process()  a= %d\n", a);
    printf("In process()  b= %d, diff=%d\n", b, diff);
}