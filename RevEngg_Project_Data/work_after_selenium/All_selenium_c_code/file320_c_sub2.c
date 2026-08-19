#include<stdio.h>

int main() {
    int num;
    printf("Enter any number :: ");
    scanf("%d", &num);

    if (num == 0) {
        printf("zero ");
        return 0;
    }

    // Direct mapping of digits to their word representations
    char *words[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    int reversed = 0, n = num;

    // Reverse the number
    while (n > 0) {
        reversed = reversed * 10 + n % 10;
        n /= 10;
    }

    // Iterate through the reversed number, mapping digits to words
    while (reversed > 0) {
        printf("%s ", words[reversed % 10]);
        reversed /= 10;
    }

    return 0;
}