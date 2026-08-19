#include<stdio.h>

int main() {
    int count = 0;
    char ch[50], c;

    printf("\nEnter Any string :: ");
    while ((c = getchar()) != '\n' && c != EOF && count < 49) {
        ch[count++] = c;
    }
    ch[count] = '\0'; // Null-terminate the string
    
    printf("\nLength of String [ ");
    printf("%s", ch);
    printf(" ] is :: [ ");
    printf("%d", count);
    printf(" ].\n");

    return 0;
}