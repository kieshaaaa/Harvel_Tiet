#include<stdio.h>
#include<string.h>

int main() {
    int input, authFlag = 0, password = 1234;
    char username[] = "user123", user[20];

    printf("\n Enter your UserName: ");
    scanf("%s", user);
    printf("\n Enter your Password: ");
    scanf("%d", &input);

    if((strcmp(user, username) == 0) && (input == password)) {
        authFlag = 1;
    }

    if(authFlag == 1) {
        printf(" Login successful!! \n");
    } else {
        printf(" Authentication failed!! \n");
    }

    return 0;
}