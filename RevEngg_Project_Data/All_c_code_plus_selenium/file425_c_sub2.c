#include <stdio.h>

void Strfun() {
    char buff[20] = "Hello Function";
    int i = 0;
    printf("The String is : ");
    while (buff[i] != '\0') {
        printf("%c", buff[i]);
        i++;
    }
}

int main() {
    Strfun();
    return 0;
}