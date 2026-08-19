#include <stdio.h>

int main() {
    char str1[20], str2[20];
    int i, equal = 1;

    printf("\nEnter first string: ");
    scanf("%19s", str1);
    printf("Enter second string: ");
    scanf("%19s", str2);

    for (i = 0; str1[i] != '\0' || str2[i] != '\0'; i++) {
        if (str1[i] != str2[i]) {
            equal = 0;
            break;
        }
    }

    if (equal && str1[i] == '\0' && str2[i] == '\0') {
        printf("\nStrings are equal.\n");
    } else {
        printf("\nStrings are not equal\n");
    }

    return 0;
}