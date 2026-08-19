#include <stdio.h>
#include <string.h>

int main() {
    char word[15];
    int len, i;
    printf("Enter a word to check if it is a palindrome\n");
    scanf("%s", word);

    len = strlen(word);
    for (i = 0; i < len / 2; i++) {
        if (word[i] != word[len - 1 - i]) {
            printf("The entered word is not a palindrome\n");
            return 0; // Early exit from the program
        }
    }

    printf("The entered word is a palindrome\n");
    return 0;
}