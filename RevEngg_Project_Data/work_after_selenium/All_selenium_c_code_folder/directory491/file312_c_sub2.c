#include <stdio.h>
#include <string.h>

int main() {
    char str[100], rev[100];
    int i, j, k, len;

    printf("\nEnter any Sentence :: ");
    fgets(str, sizeof(str), stdin);
    len = strlen(str) - 1; // Adjust for newline character
    str[len] = '\0'; // Null-terminate the string properly

    // Initialize indices
    i = len - 1;
    j = 0;

    // Traverse the string backwards
    while (i >= 0) {
        // Find the start of a word
        if (str[i] == ' ' || i == 0) {
            if (i == 0) {
                k = i;
            } else {
                k = i + 1;
            }
            // Copy the word
            while (str[k] != ' ' && str[k] != '\0') {
                rev[j++] = str[k++];
            }
            // Add a space after the word
            if (i != 0) {
                rev[j++] = ' ';
            }
        }
        i--;
    }
    rev[j] = '\0'; // Null-terminate the reversed string
    printf("\nReversed Sentence :: %s\n", rev);

    return 0;
}