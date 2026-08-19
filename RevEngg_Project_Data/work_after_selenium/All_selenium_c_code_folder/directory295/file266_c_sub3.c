#include<stdio.h>
#include<string.h>

int main() {
    char username[20];
    char password[20];
    int isValid = 1; // Flag to check validity
    
    printf("Enter the Username: ");
    scanf("%s", username);
    
    printf("Enter the password: ");
    scanf("%s", password);
    
    // Case-insensitive check for "admin"
    if(username[0] != 'A' && username[0] != 'a' ||
       username[1] != 'D' && username[1] != 'd' ||
       username[2] != 'M' && username[2] != 'm' ||
       username[3] != 'I' && username[3] != 'i' ||
       username[4] != 'N' && username[4] != 'n' ||
       username[5] != '\0') {
        isValid = 0;
    }
    
    // Check password
    if(isValid && strcmp(password, "karunya") == 0) {
        printf("Login Successful \n");
    } else {
        printf("Invalid username or password\n");
    }
    
    return 0;
}