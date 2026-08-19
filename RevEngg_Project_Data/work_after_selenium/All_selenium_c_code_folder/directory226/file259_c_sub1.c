#include <stdio.h>
#include <string.h>

int main() {
    char word[15];
    int isPalindrome = 1; // Assume word is a palindrome initially
    int i, len;

    printf("Enter a word to check if it is a palindrome\n");
    scanf("%s", word);

    len = strlen(word);
    for (i = 0; i < len / 2; i++) {
        if (word[i] != word[len - i - 1]) {
            isPalindrome = 0; // Not a palindrome
            break;
        }
    }

    if (isPalindrome)
        printf("The entered word is a palindrome\n");
    else
        printf("The entered word is not a palindrome\n");

    return 0;
}