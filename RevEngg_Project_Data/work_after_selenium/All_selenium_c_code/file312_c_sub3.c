#include <stdio.h>
#include <string.h>

int main() {
    char str[100];
    int i, j, temp, len;

    printf("\nEnter any Sentence :: ");
    fgets(str, sizeof(str), stdin);
    len = strlen(str) - 1; // Adjust for the newline character
    str[len] = '\0'; // Ensure the string is properly null-terminated

    // Reverse entire string character-wise
    for (i = 0, j = len - 1; i < j; i++, j--) {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }

    // Now, reverse each word in the reversed string
    for (i = 0; i < len;) {
        int start = i;
        while (str[i] != ' ' && i < len) i++;
        int end = i - 1;
        while (start < end) {
            temp = str[start];
            str[start] = str[end];
            str[end] = temp;
            start++;
            end--;
        }
        i++;
    }
    printf("\nReversed Sentence :: %s\n", str);

    return 0;
}