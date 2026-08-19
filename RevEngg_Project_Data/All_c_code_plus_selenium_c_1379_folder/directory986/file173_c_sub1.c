#include<stdio.h>

int main() {
    int i, count = 0;
    char ch[50];
    
    printf("\nEnter Any string :: ");
    scanf("%49[^\n]", ch); // Reads a line of text

    for (i = 0; ch[i] != '\0'; i++) {
        count++;
    }
    
    printf("\nLength of String [ ");
    printf("%s", ch);
    printf(" ] is :: [ ");
    printf("%d", count);
    printf(" ].\n");

    return 0;
}