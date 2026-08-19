#include <stdio.h>
#include <string.h>

int main() {
    char word[15];
    int leftIndex = 0;
    int rightIndex;
    int isPalindrome = 1; // Assume word is a palindrome

    printf("Enter a word to check if it is a palindrome\n");
    scanf("%s", word);

    rightIndex = strlen(word) - 1;
    while (leftIndex < rightIndex) {
        if (word[leftIndex] != word[rightIndex]) {
            isPalindrome = 0; // Not a palindrome
            break;
        }
        leftIndex++;
        rightIndex--;
    }

    if (isPalindrome)
        printf("The entered word is a palindrome\n");
    else
        printf("The entered word is not a palindrome\n");

    return 0;
}