#include <stdio.h>
int main()
{
    int velocity, duration, distance;
    printf("Enter the Speed in Kms: \n");
    scanf("%d", &velocity);

    printf("Enter the time: \n");
    scanf("%d", &duration);

    distance = velocity * duration;
    printf("Distance travelled by a vehicle is: %d Km \n", distance);
}