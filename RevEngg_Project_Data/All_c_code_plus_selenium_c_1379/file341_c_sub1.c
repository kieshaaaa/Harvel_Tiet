#include <stdio.h>

#define MAX_STRINGS 3
#define MAX_LENGTH 50

// Global 2D array
char buff[MAX_STRINGS][MAX_LENGTH] = {"Hello function", "How are you?", "Catch some strings"};

// Function to print strings
void Strfun(int count) {
    int i;
    for(i = 0; i < count; i++) {
        printf("\nString [%d] : ", i);
        puts(buff[i]); // using puts to print string
    }
}

int main() {
    Strfun(3); // here 3 is the number of strings
    return 0;
}