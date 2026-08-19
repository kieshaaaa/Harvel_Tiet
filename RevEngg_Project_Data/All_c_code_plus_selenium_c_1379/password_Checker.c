#include<stdio.h>
int main()
{
    int enteredPassword;
    int password=1234;
    int i ;
    int login;
    
    printf("Enter the password: ");
    scanf("%d", &enteredPassword);
    
    for(i = 0; i <= 2; i++)
    {
        printf("Enter the password: ");
        scanf("%d", &enteredPassword);

        if(password == enteredPassword)
        {
            login = enteredPassword + 1;
            printf("Login Successful %d login \n",login);
        }
        else
        {
            login = enteredPassword + 2;
            printf("Login Failed!! Please Try again... %d \n", login);
        } 

    }

return 0;
}
