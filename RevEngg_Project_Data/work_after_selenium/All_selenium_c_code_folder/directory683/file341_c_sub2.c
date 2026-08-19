#include <stdio.h>

// Function to print strings
void Strfun(char arr[][50], int count) {
    int i;
    for(i = 0; i < count; i++) {
        printf("\nString [%d] : ", i);
        fputs(arr[i], stdout); // using fputs to print string
    }
}

int main() {
    char buff[3][50] = {"Hello function", "How are you?", "Catch some strings"};
    Strfun(buff, 3); // Passing 2D array to function
    return 0;
}