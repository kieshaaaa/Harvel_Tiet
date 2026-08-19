#include<stdio.h>
#include<string.h>

int main() {
    char username[20];
    char password[20];
    
    printf("Enter the Username: ");
    scanf("%s", username);
    
    printf("Enter the password: ");
    scanf("%s", password);
    
    if(strcasecmp(username, "admin") == 0 && strcmp(password, "karunya") == 0) {
        printf("Login Successful \n");
    } else {
        printf("Invalid username or password\n");
    }
    
    return 0;
}