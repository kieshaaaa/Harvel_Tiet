#include<stdio.h>
#include<string.h>

int main() {
    int input, password = 1234;
    char username[] = "admin", user[20];

    printf("\n Enter your UserName: ");
    scanf("%s", user);
    printf("\n Enter your Password: ");
    scanf("%d", &input);

    if(strcmp(user, username) == 0) {
        if(input == password) {
            printf(" Login successful!! \n");
        } else {
            printf(" Authentication failed!! \n");
        }
    } else {
        printf(" Authentication failed!! \n");
    }
    return 0;
}