#include <stdio.h>

int main() {
    char str[] ; // Directly assigning a value to the string
    int length = 0;
    scanf("%c",str);
    // Iterate through each character in the string until the null terminator is reached
    while(str[length] != '\0') {
        length++;
    }

    printf("The length of the string is: %d\n", length);

    return 0;
}
