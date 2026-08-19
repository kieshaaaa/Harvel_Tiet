#include<stdio.h>
#include<string.h>
#include<ctype.h>

int main() {
    char username[20];
    char password[20];
    char lowerUsername[20] = {0};
    
    printf("Enter the Username: ");
    scanf("%s", username);
    
    printf("Enter the password: ");
    scanf("%s", password);
    
    // Convert entered username to lowercase for case-insensitive comparison
    for(int i = 0; username[i]; i++){
        lowerUsername[i] = tolower(username[i]);
    }
    
    if(strcmp(lowerUsername, "admin") == 0 && strcmp(password, "karunya") == 0) {
        printf("Login Successful \n");
    } else {
        printf("Invalid username or password\n");
    }
    
    return 0;
}