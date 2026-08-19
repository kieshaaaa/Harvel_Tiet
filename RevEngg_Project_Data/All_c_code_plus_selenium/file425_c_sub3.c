#include <stdio.h>

#define MY_STRING "Hello Function"

void Strfun() {
    printf("The String is : ");
    printf("%s", MY_STRING);
}

int main() {
    Strfun();
    return 0;
}