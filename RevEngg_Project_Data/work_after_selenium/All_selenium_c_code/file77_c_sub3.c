#include<stdio.h>
#include<string.h>

int main() {
    int input;
    char user[20];

    printf("\n Enter your UserName: ");
    scanf("%s", user);
    printf("\n Enter your Password: ");
    scanf("%d", &input);

    // Direct comparison in the condition
    if(strcmp(user, "admin123") == 0 && input == 4321) {
        printf(" Login successful!! \n");
    } else {
        printf(" Authentication failed!! \n");
    }

    return 0;
}