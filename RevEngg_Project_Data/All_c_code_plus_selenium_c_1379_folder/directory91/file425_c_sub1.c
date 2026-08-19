#include <stdio.h>

char buff[20] = "Hello Function";

void Strfun() {
    printf("The String is : ");
    printf("%s", buff);
}

int main() {
    Strfun();
    return 0;
}