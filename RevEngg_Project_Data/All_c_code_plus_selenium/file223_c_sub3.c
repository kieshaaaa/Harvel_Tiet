#include <stdio.h>

int main() {
    char str1[20], str2[20];
    int i = 0, diff = 0;

    printf("\nEnter first string: ");
    scanf("%19s", str1);
    printf("Enter second string: ");
    scanf("%19s", str2);

    while (str1[i] != '\0' || str2[i] != '\0') {
        if (str1[i] != str2[i]) {
            diff = 1;
            break;
        }
        i++;
    }

    if (!diff && str1[i] == '\0' && str2[i] == '\0') {
        printf("\nStrings are equal.\n");
    } else {
        printf("\nStrings are not equal\n");
    }

    return 0;
}