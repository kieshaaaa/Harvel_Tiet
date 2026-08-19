#include<stdio.h>

int main() {
    int count = 0;
    char ch[50];
    
    printf("\nEnter Any string :: ");
    scanf("%49[^\n]", ch); // Reads a line of text

    while (ch[count] != '\0') {
        count++;
    }
    
    printf("\nLength of String [ ");
    printf("%s", ch);
    printf(" ] is :: [ ");
    printf("%d", count);
    printf(" ].\n");

    return 0;
}