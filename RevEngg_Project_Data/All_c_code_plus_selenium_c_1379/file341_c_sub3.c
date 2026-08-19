#include <stdio.h>

// Function to print strings
void Strfun(char str1[], char str2[], char str3[]) {
    printf("\nString [0] : ");
    puts(str1); // Print the first string
    printf("String [1] : ");
    puts(str2); // Print the second string
    printf("String [2] : ");
    puts(str3); // Print the third string
}

int main() {
    char str1[] = "Hello function";
    char str2[] = "How are you?";
    char str3[] = "Catch some strings";
    Strfun(str1, str2, str3);
    return 0;
}